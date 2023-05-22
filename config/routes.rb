Rails.application.routes.draw do
  # get 'team_onners/index'
  # get 'team_onners/show'
  # get 'team_onners/create'
  # get 'team_onners/update'
  # get 'team_onners/destroy'
  resources :team_onners

  get "players/all_player_list"
  post "players/create"
  put '/players/:id', to: 'players#update_player'
  get '/players/:id', to: 'players#show_player'
  delete '/players/:id', to: 'players#destroy_player'
  post 'login', to: 'sessions#create'
  
  get "seriase/all_seriase"
  get '/seriase/:id', to: 'seriase#find_seriase'
  post "seriase/create_seriase"
  put "/seriase/:id", to: "seriase#update_seriase"
  delete "seriase/:id", to: "seriase#seriase_destroy"

  get "empires/index"
  post "empires/create"
  get "empires/:id", to: "empires#show"
  put "empires/:id", to: "empires#update"
  delete "empires/:id", to: "empires#destroy"

  get "coachs/index"
  get "coachs/:id", to: "coachs#show"
  post "coachs/create"
  put "coachs/:id", to: "coachs#update"
  delete "coachs/:id", to: "coachs#destroy"

  get "make_teams/index"
  get "make_teams/:id", to: "make_teams#show"
  post "make_teams/create"
  put "make_teams/:id", to: "make_teams#update"
  delete "make_teams/:id", to: "make_teams#destroy"

  resources :grounds

end
