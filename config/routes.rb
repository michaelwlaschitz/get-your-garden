Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gardens, only: [:index, :create, :new, :show] do
   resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :show] do
   resources :reviews, only: [:create]
  end
end
