class Score < ApplicationRecord
  belongs_to :player
  validates :game_score, presence: true, numericality: { only_integer: true }
  validates :timestamp, presence: true
  validates :time_spent_seconds, presence: true, numericality: true

  def week(week_number)
    timestamp.strftime('%W') == week_number
  end
end
