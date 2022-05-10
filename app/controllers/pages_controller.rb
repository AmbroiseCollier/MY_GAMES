class PagesController < ApplicationController

  def home
  end

  def dashboard
    @reservations = current_player.reservations
    @games = current_player.games
  end

end
