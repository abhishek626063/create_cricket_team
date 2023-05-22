class AddRefferenceToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_reference :players, :make_team , foreign_key: true
  end
end
