Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/signup' => 'signup#signup'
  get '/profile' => 'profile#profile'
  resources :events



  # ================ api controllers return JSON=====================
    namespace :api do
      resources :events
      resources :types
      resources :users

    end
end
