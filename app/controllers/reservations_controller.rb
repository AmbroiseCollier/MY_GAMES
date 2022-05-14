class ReservationsController < ApplicationController

  def create
    find_game
    @reservation = Reservation.new(resa_params)
    @reservation.player_id = current_player.id
    @reservation.game = @game
    if @reservation.save
      redirect_to dashboard_path
    else
      render 'games/show'
    end
  end


  def destroy
    find_reservation
    @reservation.destroy
    redirect_to dashboard_path
    # this is not working yet
  end

  def update
    find_reservation
    @status = params[:status]
    if @status == 'accepted'
      @reservation.accepted!
      @reservations_not = @reservation.game.reservations.not_accepted
      @reservations_not.each { |resa| resa.rejected! }
    else @status == 'rejected'
      @reservation.rejected!
    end
    redirect_to game_path(@reservation.game)
  end


  private


  def resa_params
    params.require(:reservation).permit(:message)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def find_game
    @game = Game.find(params[:game_id])
  end

end
