class AddCityToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :city, :string
  end
end
