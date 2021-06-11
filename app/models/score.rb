class Score < ApplicationRecord
  belongs_to :player
  validates :game_score, presence: true

  scope :week, -> (week) {
    where(:timestamp == week)
  }

  def week(week_number)
    self.timestamp.strftime('%W') == week_number
  end
end
