json.array! @top_ten_scores do |score|
  json.extract! score, :id, :player_id, :timestamp, :game_score, :time_spent_seconds
end
