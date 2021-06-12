class Player < ApplicationRecord
  has_many :scores, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  def self.with_score
    Player.all.select{ |player| player.scores.any? }
  end

  def first_score
    scores.first.game_score
  end

  def top_score
    scores.maximum(:game_score)
  end

  def playthroughs
    scores.count
  end

  def total_time_played
    total_time_played = 0
    scores.each do |score|
      total_time_played += score.time_spent_seconds
    end
    total_time_played
  end

  def difference_score
    top_score - first_score
  end
end
