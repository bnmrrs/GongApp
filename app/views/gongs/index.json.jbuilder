json.array!(@gongs) do |gong|
  json.extract! gong, :name, :threshhold
  json.url gong_url(gong, format: :json)
end
