class MakeTeam < ApplicationRecord
  has_many :players
  has_many :coaches
  has_and_belongs_to_many :team_onners
  has_and_belongs_to_many :seriases
end
