Rails.application.routes.draw do
  root to: "home#index"

  get 'signup', to: "users#new"

  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: 'sessions#destroy'

  get '/auth/twitter', as: 'twitter_login'
  get '/auth/twitter/callback', to: 'sessions#create'

  get 'dashboard', to: "dashboard#index"

  resources :users, only: [:new, :create]
  resources :userteams, only: [:create]

  get 'teams', to: "teams#index"
  get 'players', to: "players#index"

  get 'roster/:team_id', to: "rosters#show", as: 'roster'
  get 'injuries/:team_id', to: "injuries#show", as: 'injury'
  get 'standings/:team_id', to: "standings#show", as: 'standings'
end
