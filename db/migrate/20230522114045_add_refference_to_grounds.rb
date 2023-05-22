class AddRefferenceToGrounds < ActiveRecord::Migration[7.0]
  def change
    add_reference :grounds, :seriase , foreign_key: true
  end
end
