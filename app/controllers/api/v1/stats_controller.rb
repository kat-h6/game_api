class Api::V1::StatsController < Api::V1::BaseController
  def show
    @scores = Score.order(game_score: :desc)
    @week = params[:id]
    @this_weeks_scores = []
    @scores.each do |score|
      @this_weeks_scores << score if score.week == @week
    end
    @top_ten_scores = @this_weeks_scores[1..10]
  end
end
