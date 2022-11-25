Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :buddies do
    # post "buddies", to: "buddies#destroy", as: :destroy
    resources :events, only: %i[index show] do
      member do
        patch :accept
        patch :decline
      end
    end
    post "events", to: "events#create", as: :create_reservation
  end

  resources :events, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
