class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :player_total_match
      t.string :address
      t.integer :average
      t.string :player_type
      t.integer :player_requier_rate
      t.integer :player_best_performance
      t.string :player_profile_pic
      t.date :player_dob

      t.timestamps
    end
  end
end
