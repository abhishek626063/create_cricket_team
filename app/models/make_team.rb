class MakeTeam < ApplicationRecord

	has_many :coachs
	has_many :players
	has_and_belongs_to_many :seriase
	has_and_belongs_to_many :team_onners
	
end
