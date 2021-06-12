class Api::V1::StatsController < Api::V1::BaseController
  def show
    @week = "#{Date.commercial(2021, params[:id].to_i, 1)} - #{Date.commercial(2021, params[:id].to_i, 7)}"
    week_start = Date.commercial(2021, params[:id].to_i, 1)
    week_end = Date.commercial(2021, params[:id].to_i, 7)
    @top_ten = Player.joins(:scores)
                     .where('timestamp >= ?', week_start)
                     .where('timestamp <= ?', week_end)
                     .order(game_score: :desc, time_spent_seconds: :desc)
                     .group(:player_id, :name, :game_score, :time_spent_seconds, :timestamp)
                     .pluck(:player_id, :name, :timestamp, 'sum(game_score)', 'sum(time_spent_seconds)')
                     .uniq{ |player| player.first }[0..9]
    # OPTIMIZE: optimize top ten sequel queries
  end
end
