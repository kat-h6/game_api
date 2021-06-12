class Score < ApplicationRecord
  belongs_to :player
  validates :game_score, presence: true
  validates :timestamp, presence: true
  validates :time_spent_seconds, presence: true

  def week(week_number)
    timestamp.strftime('%W') == week_number
  end
end
