class Api::V1::ScoresController < Api::V1::BaseController
  before_action :set_score, only: [:show, :update, :destroy]
  def index
    @scores = Score.all
  end

  def show
    @player = @score.player
  end

  def update
    if @score.update(score_params)
      render :show
    else
      render_error
    end
  end

  def create
    @score = Score.new(player_params)
    if @score.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @score.destroy
    head :no_content
  end

  private

  def score_params
    params.require(:score).permit(:player_id, :timestamp, :game_score, :time_spent_seconds)
  end

  def set_score
    @score = Score.find(params[:id])
  end
end
