json.players do
  json.array! @players do |player|
    json.extract! player, :id, :name
  end
end
