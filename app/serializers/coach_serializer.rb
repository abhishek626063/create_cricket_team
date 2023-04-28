class CoachSerializer < ActiveModel::Serializer
  attributes :id,
  :coach_name,
  :type_of_coach,
  :age,
  :coaching_time_year,
  :player_coach_rate,
  :one_seriase_rate
end
