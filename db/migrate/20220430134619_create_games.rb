class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :address
      t.date :date

      t.timestamps
    end
  end
end
