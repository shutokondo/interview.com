Rails.application.routes.draw do
  get 'oauths/oauth'
  get 'oauths/callback'
  root 'top#index'
  resources :users
  resources :user_sessions, only: %i[new create destroy]

  post 'oauth/callback' => 'oauths#callback'
  get 'oauth/callback' => 'oauths#callback'
  get 'oauth/:provider' => 'oauths#oauth', :as => :auth_at_provider
  get 'login' => 'user_sessions#new', :as => :login
  delete 'logout' => 'user_sessions#destroy', :as => :logout
end
