class Api::V1::PlayersController < Api::V1::BaseController
  before_action :set_player, only: [:show, :update, :destroy]
  def index
    @players = Player.all
  end

  def show
  end

  def update
    if @player.update(player_params)
      render :show
    else
      render_error
    end
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @player.destroy
    head :no_content
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
