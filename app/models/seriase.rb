class Seriase < ApplicationRecord
  has_many :empires
  has_and_belongs_to_many :make_teams
  has_many :grounds
end
