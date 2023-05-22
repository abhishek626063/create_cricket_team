class MakeTeamsSeriases < ActiveRecord::Migration[7.0]
  def change
    create_table :make_teams_seriases do |t|
      t.integer :make_team_id
      t.integer :seriase_id
      t.timestamps
      end
  end
end
