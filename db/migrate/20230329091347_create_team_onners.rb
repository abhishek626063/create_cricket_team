class CreateTeamOnners < ActiveRecord::Migration[7.0]
  def change
    create_table :team_onners do |t|
      t.string :name
      t.string :onner_team_name
      t.string :email
      t.string :password
      t.integer :age

      t.timestamps
    end
  end
end
