Rails.application.routes.draw do


  resources :events


  # ================ api controllers return JSON=====================
    namespace :api do
      resources :events
    end
end
