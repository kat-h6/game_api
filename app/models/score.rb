class Score < ApplicationRecord
  belongs_to :player
  validates :game_score, presence: true

  def final_score
    ((game_score * 100) / time_spent_seconds).floor
  end

  def week
    self.timestamp.strftime('%W')
  end
end
