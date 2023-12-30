class CreatePodcastJob
  include Sidekiq::Job

  def perform(id)
    podcast = Podcast.find(id)

    podcast.fetch_podcast
  end
end
