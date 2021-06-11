class Score < ApplicationRecord
  belongs_to :player
  validates :game_score, presence: true

  def week
    self.timestamp.strftime('%W')
  end
end
