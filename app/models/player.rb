class Player < ApplicationRecord
  has_many :scores, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  def first_score
    self.scores.select(:id, :game_score, :time_spent_seconds).first
  end

  def top_score
    self.scores.order(game_score: :desc, time_spent_seconds: :desc).select(:id, :game_score, :time_spent_seconds).first
  end

  def playthroughs
    self.scores.count
  end

  def total_time_played
    total_time_played = 0
    self.scores.each do |score|
      total_time_played += score.time_spent_seconds
    end
    total_time_played
  end
end
