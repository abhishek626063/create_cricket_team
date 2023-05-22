class CreateGrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :grounds do |t|
      t.string :name
      t.date :grount_create_date
      t.string :ground_address
      t.string :ground_boundry_size
      t.string :one_match_rate
      t.string :two_match_rate
      t.string :all_seriase_rate
      t.string :ground_onner_number

      t.timestamps
    end
  end
end
