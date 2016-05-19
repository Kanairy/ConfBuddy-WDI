Rails.application.routes.draw do

  get '/' => 'home#index'
  resources :events


  # ================ api controllers return JSON=====================
    namespace :api do
      resources :events
      resources :users
    end
end
