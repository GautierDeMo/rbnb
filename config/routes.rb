Rails.application.routes.draw do
  devise_for :users
  root to: "dreams#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :dreams do
    resources :bookings, only: [:index, :show, :new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: :destroy

  patch "bookings/:id/accept", to: "bookings#accept", as: :accept
  patch "bookings/:id/decline", to: "bookings#decline", as: :decline
  get "/dashboard", to: "pages#dashboard"
end
