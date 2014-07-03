json.array!(@episodes) do |episode|
  json.extract! episode, :id, :title, :episode_number, :podcast_id
  json.url episode_url(episode, format: :json)
end
