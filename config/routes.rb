Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/test_bookings", to: "pages#test_bookings"
  resources :gardens, only: [:index, :create, :new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
