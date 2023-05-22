class CreateMakeTeamsTeamOnners < ActiveRecord::Migration[7.0]
  def change
    create_table :make_teams_team_onners do |t|
      t.integer :team_onner_id
      t.integer :make_team_id
      t.timestamps
      
    end
  end
end
