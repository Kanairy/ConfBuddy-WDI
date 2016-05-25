Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/signup' => 'signup#signup'

  get '/login/oauth2' => 'signup#oauth2'
  get '/login/oatoken' => 'signup#oatoken'


  get '/profile' => 'profile#profile'

  get '/profile' => 'profile#profile'

  resources :events
  resources :users


  # ================ api controllers return JSON=====================
    namespace :api do
      resources :events
      resources :types
      resources :users
    end
end
