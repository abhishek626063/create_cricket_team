class AddColumnPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :email, :string
    add_column :players, :password, :string
  end
end
