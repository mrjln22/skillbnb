Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services
  resources :bookings, only: [:update]
  get "/dashboard", to: "dashboards#index"
end
