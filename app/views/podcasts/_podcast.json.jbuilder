json.extract! podcast, :id, :title, :link, :description, :subtitle, :author, :image, :created_at, :updated_at
json.url podcast_url(podcast, format: :json)
