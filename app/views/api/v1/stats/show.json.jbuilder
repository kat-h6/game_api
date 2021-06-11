json.top_ten_players
json.array! @top_ten_players do |player|
  json.extract! player, :id, :name
end
