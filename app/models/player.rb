class Player < ApplicationRecord
  has_many :scores
  validates :name, presence: true, uniqueness: true
end
