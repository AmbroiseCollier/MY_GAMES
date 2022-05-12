class ReservationsController < ApplicationController
  before_action :find_game, only: [:edit, :update, :destroy]


  def create
    find_game
    @reservation = Reservation.new(resa_params)
    @reservation.player_id = current_player.id
    @reservation.game_id = @game.id
    if @reservation.save
      redirect_to dashboard_path
    else
      render 'games/show'
    end
  end


  def destroy
    @reservation.destroy
    redirect_to dashboard_path
    # this is not working yet
  end

  def update

  end

  private


  def find_game
    @game = Game.find(params[:game_id])
  end

  def resa_params
    params.require(:reservation).permit(:message)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

end
