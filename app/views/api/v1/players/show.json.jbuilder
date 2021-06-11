json.extract! @player, :id, :name
json.scores @player.scores do |score|
  json.extract! score, :id, :timestamp, :game_score, :time_spent_seconds
end
