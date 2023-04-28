class PlayerSerializer < ActiveModel::Serializer
  attributes :id,
  :name, 
  :email,
  :password,                                              
  :age,                                                     
  :player_total_match,                                      
  :address,                                                
  :average,                                                
  :player_type,                                       
  :player_requier_rate,
  :player_best_performance,
  :player_profile_pic,
  :player_dob,
  :generate_token
end
