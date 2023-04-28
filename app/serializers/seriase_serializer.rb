class SeriaseSerializer < ActiveModel::Serializer
  attributes :id,
  :seriase_name,
  :seriase_onner,
  :start_seriase_date,
  :end_seriase_date,
  :first_price,
  :second_price,
  :seriase_level,
  :seriase_onner_number,
  :match_timing,
  :ground_location,
  :entry_frees,
  :seriase_type
end
