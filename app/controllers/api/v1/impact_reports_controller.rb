class Api::V1::ImpactReportsController < Api::V1::BaseController
  def show
    @players = Player.with_score
  end
end
