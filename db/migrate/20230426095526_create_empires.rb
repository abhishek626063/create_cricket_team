class CreateEmpires < ActiveRecord::Migration[7.0]
  def change
    create_table :empires do |t|
      t.string :empire_name
      t.integer :age
      t.integer :empire_experience
      t.string :address
      t.string :phone_number
      t.integer :one_match_empiring_rate
      t.string :two_match_empiring_rate
      t.string :complet_seriase_empiring_rate
      t.string :email
      t.string :star
      t.string :picture
      t.integer :match_empiring

      t.timestamps
    end
  end
end
