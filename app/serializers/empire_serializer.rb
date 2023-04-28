class EmpireSerializer < ActiveModel::Serializer
  attributes :id,
  :empire_name,                               
  :age,                                                   
  :empire_experience,                                     
  :address,                                               
  :phone_number,                                          
  :one_match_empiring_rate,                               
  :two_match_empiring_rate,                               
  :complet_seriase_empiring_rate,                         
  :email,                                                 
  :star,                                                  
  :picture,                                               
  :match_empiring

end
