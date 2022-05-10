class Game < ApplicationRecord
  has_many :reservations
  has_many :players, through: :reservation, source: :participant
  has_many :reviews
  validates :address, :date, :city, presence: true
  belongs_to :creator, class_name: "Player", foreign_key: "player_id"

  enum status: { free: 0, booked: 1 }

end
