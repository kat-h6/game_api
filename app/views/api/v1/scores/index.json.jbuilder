json.array! @scores do |score|
  json.extract! score, :id, :timestamp, :game_score, :time_spent_seconds, :player_id
end
