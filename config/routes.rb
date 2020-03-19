Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gardens, only: [:index, :create, :new, :show] do
   resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

