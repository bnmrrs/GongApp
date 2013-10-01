json.array!(@votes) do |vote|
  json.extract! vote, :gong_id, :session_id
  json.url vote_url(vote, format: :json)
end
