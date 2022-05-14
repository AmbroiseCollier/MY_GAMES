class Game < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :players, through: :reservation, source: :participant
  has_many :reviews, dependent: :destroy
  belongs_to :creator, class_name: "Player", foreign_key: "player_id"

  validates :address, :date, :city, presence: true
  enum status: { created: 0, booked: 1 }

end
