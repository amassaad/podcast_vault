json.extract! episode, :id, :title, :link, :duration, :podcast_id, :description, :size, :published_at, :created_at, :updated_at
json.url episode_url(episode, format: :json)
