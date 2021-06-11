json.array! @players do |player|
  json.extract! player, :id, :name
  json.first_score player.first_score
  json.top_score player.top_score
  json.playthroughs player.playthroughs
  json.total_time_played player.total_time_played
end
