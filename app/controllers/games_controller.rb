class GamesController < ApplicationController
  def index
    @city = params[:city]
    @date = params[:date]
    if (@city.present? && @date.present?)  # filter by city and date
     @games = Game.where(city: @city, date: @date)
    elsif ((@city.present?) && ((@date.present? == false) && true))
      @games = Game.where("city LIKE ?","%#{params[:city]}%")
    elsif ((@date.present?) && ((@city.present? == false) && true))
      @games = Game.where(date: params[:date])
    else
      @games = Game.all
    end
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:address, :date)
  end
end
