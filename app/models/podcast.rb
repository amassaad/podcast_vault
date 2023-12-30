class Podcast < ApplicationRecord
  has_many :episodes, dependent: :destroy

  validates :link, presence: true, uniqueness: true
  
  after_create :process_podcast

  def process_podcast
    CreatePodcastJob.perform_async(self.id)
  end

  def fetch_podcast
    url = self.link

    response = HTTParty.get(url)
    puts "trying to fetch #{url}"


    feed = Nokogiri::XML(response.body)
    podcast = feed.xpath('//channel').first

    # Build the Podcast object
    podcast_model = Podcast.where(link: link).first_or_initialize
    podcast_model.update(
      title: podcast.xpath('title').try(:text),
      description: podcast.xpath('description').try(:text),
      subtitle: podcast.xpath('itunes:subtitle').any? ? podcast.xpath('itunes:subtitle').text : nil,
      author: podcast.xpath('itunes:author').try(:text),
      image: podcast.xpath('itunes:image').any? ? podcast.xpath('itunes:image').attr('href').value : nil
    )

    # Save the Podcast instance
    podcast_model.save!

    # Loop through each item (episode) in the Podcast RSS feed
    podcast.xpath('//item').each do |episode|
      episode_model = Episode.new(
        podcast_id: podcast_model.id,
        title: episode.xpath('title').text,
        link: episode.at_xpath('enclosure/@url').try(:value),
        description: episode.xpath('description').text,
        published_at: episode.xpath('pubDate').text.to_datetime,
        guid: episode.xpath('guid').text
      )

      # Save the Episode instance
      episode_model.save!
    end

    podcast_model.processed = true
    podcast_model.save!
  end
end
