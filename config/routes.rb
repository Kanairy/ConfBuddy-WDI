Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/signup' => 'signup#signup'
  get '/login/oauth2' => 'signup#oauth2'
  get '/login/oatoken' => 'signup#oatoken'

  resources :events



  # ================ api controllers return JSON=====================
    namespace :api do
      resources :events
      resources :types
      resources :users

    end
end
