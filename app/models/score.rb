class Score < ApplicationRecord
  belongs_to :player
  validates :game_score, presence: true
end
