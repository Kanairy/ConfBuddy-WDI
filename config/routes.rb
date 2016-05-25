Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/signup' => 'signup#signup'
<<<<<<< HEAD
  get '/login/oauth2' => 'signup#oauth2'
  get '/login/oatoken' => 'signup#oatoken'

=======
  get '/profile' => 'profile#profile'
>>>>>>> 6159e70f28e8a7edc70b7d7a41d008d6229cb875
  resources :events



  # ================ api controllers return JSON=====================
    namespace :api do
      resources :events
      resources :types
      resources :users

    end
end
