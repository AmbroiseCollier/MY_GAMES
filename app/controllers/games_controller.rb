class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to root_path
  end

  private

  def game_params
    params.require(:game).permit(:address, :date)
  end
end
