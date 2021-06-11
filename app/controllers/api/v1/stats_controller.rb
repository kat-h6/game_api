class Api::V1::StatsController < Api::V1::BaseController
  def show
    @week = "#{Date.commercial(2021, params[:id].to_i, 1)} - #{Date.commercial(2021, params[:id].to_i, 7)}"
    @players = Player.joins(:scores).order(game_score: :desc, time_spent_seconds: :desc)
    @top_ten = @players.joins(:scores).group(:player_id, :name, :game_score, :time_spent_seconds).pluck(:player_id, :name, 'sum(game_score)', 'sum(time_spent_seconds)')[0..9]
  end
end
