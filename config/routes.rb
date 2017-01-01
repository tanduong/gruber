Rails.application.routes.draw do
  resources :passengers, only: [:create]

  resources :drivers, only: [:create, :update] do
    member do
      post :locations, action: :update_location
    end
  end
end
