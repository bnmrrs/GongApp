json.extract! @vote, :gong_id, :session_id, :created_at, :updated_at
json.gong do
  json.partial! 'gongs/gong', gong: @gong
end
