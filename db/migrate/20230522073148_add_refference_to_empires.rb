class AddRefferenceToEmpires < ActiveRecord::Migration[7.0]
  def change
    add_reference :empires, :seriase , foreign_key: true
  end
end
