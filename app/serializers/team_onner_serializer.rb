class TeamOnnerSerializer < ActiveModel::Serializer
  attributes :id,
    :name,
    :onner_team_name,
    :email,
    :password,
    :age
end
