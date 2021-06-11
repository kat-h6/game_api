json.stats do
  json.week @week
  json.top_players do
    json.array! @top_ten do |player|
      json.player_id player[0]
      json.name player[1]
      json.game_score_sum player[2]
      json.sum_of_time_spent_in_seconds player[3]
    end
  end
end
