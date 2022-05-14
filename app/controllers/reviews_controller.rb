class ReviewsController < ApplicationController

  def create
    find_game
    @review = Review.new(review_params)
    @review.game = @game
    @review.player= current_player
    if @review.save
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
