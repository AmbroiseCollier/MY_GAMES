class ReviewsController < ApplicationController
  before_action :find_game,

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    @review.player_id = current_player.id
    @reservation.game_id = @game.id
    if @reservation.save
      redirect_to game_path(@game)
    else
      render 'games/show'
    end


  end

  private

  def find_game
    @game = Game.find(params[:game_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
