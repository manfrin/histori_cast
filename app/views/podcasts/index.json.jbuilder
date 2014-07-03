json.array!(@podcasts) do |podcast|
  json.extract! podcast, :id, :title, :description, :user_id
  json.url podcast_url(podcast, format: :json)
end
