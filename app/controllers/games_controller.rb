class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]


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
    @game.creator = current_player
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end


  def show
    @reservations = @game.reservations
    @reservation = Reservation.new
    @review = Review.new
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :new
    end
  end


  def destroy
    @game.destroy
    redirect_to root_path
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:address, :date, :city, :picture_url)
  end
end
