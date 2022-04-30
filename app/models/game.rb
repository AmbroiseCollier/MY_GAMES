class Game < ApplicationRecord
  has_many :players, through: :reservation
  has_many :reviews
end
