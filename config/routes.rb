Rails.application.routes.draw do
  resources :passengers, only: [:create]

  resources :drivers, only: [:create, :update] do
    member do
      patch :locations, action: :update_location
    end
  end

  resources :requests, only: [:create, :index]
end
