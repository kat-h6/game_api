json.stats do
  json.week @week
  json.top_players do
    json.array! @top_ten do |player|
      json.player_id player[0]
      json.name player[1]
      json.timestamp player[2].strftime("%m/%d/%Y, %H:%M:%S")
      json.game_score_sum player[3]
      json.sum_of_time_spent_in_seconds player[4]
    end
  end
end
