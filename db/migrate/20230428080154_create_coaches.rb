class CreateCoaches < ActiveRecord::Migration[7.0]
  def change
    create_table :coaches do |t|
      t.string :coach_name
      t.string :type_of_coach
      t.integer :age
      t.integer :coaching_time_year
      t.integer :player_coach_rate
      t.integer :one_seriase_rate

      t.timestamps
    end
  end
end
