class ChangeGamesInReviews < ActiveRecord::Migration[6.1]
  def change
    change_table :reviews do |t|
      t.rename :games_id, :game_id
    end
  end
end
