class CreateMakeTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :make_teams do |t|
      t.string :team_name
      t.string :total_player_and_team_member

      t.timestamps
    end
  end
end
