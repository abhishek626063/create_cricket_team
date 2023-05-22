class GroundSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :grount_create_date,
  :ground_address,
  :ground_boundry_size,
  :one_match_rate,
  :two_match_rate,
  :all_seriase_rate,
  :ground_onner_number
  
end
