class AddRefferenceToCoach < ActiveRecord::Migration[7.0]
  def change
    add_reference :coaches, :make_team , foreign_key: true
  end
end
