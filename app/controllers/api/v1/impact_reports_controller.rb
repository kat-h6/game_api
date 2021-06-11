class Api::V1::ImpactReportsController < Api::V1::BaseController
  def show
    @players = Player.all
    # first_scores = Player.each(&:first_score)
  end
end
