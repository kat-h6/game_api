class Api::V1::StatsController < Api::V1::BaseController
  def show
    @players = Player.joins(:scores).group(:players_id).order(game_score: :desc, time_spent_seconds: :desc)
    # raise
    # @scores = Score.order(final_score: :desc)
    @week = params[:id]
    @top_p_this_week = []
    @players.each do |player|
      player.scores.each do |score|
        @top_p_this_week << player if score.week == @week
      end
    end
    @top_ten_players = @top_p_this_week[1..10]
    raise
  end
end
