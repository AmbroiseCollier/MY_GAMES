class ReservationsController < ApplicationController

  def create
    find_game
    @reservation = Reservation.new(resa_params)
    @reservation.player_id = current_player.id
    @reservation.game_id = @game.id
    if @reservation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end


  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to dashboard_path
  end

  private


  def find_game
    @game = Game.find(params[:game_id])
  end

  def resa_params
    params.require(:reservation).permit(:message)
  end

end
