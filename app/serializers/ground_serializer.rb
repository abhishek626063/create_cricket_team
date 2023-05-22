class GroundSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :string,
  :grount_create_date,
  :date,
  :ground_address,
  :string, 
  :ground_boundry_size: 2km,
  :one_match_rate,
  :two_match_rate all_seriase_rate: string,
  :ground_onner_number: string
  
end
