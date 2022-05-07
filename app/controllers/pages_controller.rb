class PagesController < ApplicationController
  def home
  end
  def dashboard
    @reservations = Reservation.where(player: current_player)
  end
end
