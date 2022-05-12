class Reservation < ApplicationRecord
  belongs_to :game
  belongs_to :participant, class_name: "Player", foreign_key: "player_id"
  enum status: { requested: 0, accepted: 1, rejected: 2 }

  validates :message, presence: true

end
