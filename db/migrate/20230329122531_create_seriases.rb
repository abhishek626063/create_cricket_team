class CreateSeriases < ActiveRecord::Migration[7.0]
  def change
    create_table :seriases do |t|
      t.string :seriase_name
      t.string :seriase_onner
      t.date :start_seriase_date
      t.date :end_seriase_date
      t.string :first_price
      t.string :second_price
      t.integer :seriase_level
      t.string :seriase_onner_number
      t.string :picture
      t.string :match_timing
      t.string :ground_location
      t.integer :entry_frees
      t.string :seriase_type

      t.timestamps
    end
  end
end
