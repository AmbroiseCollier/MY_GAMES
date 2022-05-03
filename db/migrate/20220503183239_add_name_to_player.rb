class AddNameToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :name, :string
    add_column :players, :last_name, :string
    add_column :players, :age, :integer
    add_column :players, :years, :integer
  end
end
