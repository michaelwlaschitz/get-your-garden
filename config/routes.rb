Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/test_bookings", to: "pages#test_bookings"

  resources :gardens, only: [:index, :create, :new, :show] do
   resources :bookings, only: [:create]
  end
  resources :booking, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

