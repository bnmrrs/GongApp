json.extract! @gong, :name, :threshhold, :created_at, :updated_at
json.vote_count @gong.votes.count
