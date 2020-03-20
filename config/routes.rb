Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gardens, only: [:index, :create, :new, :show] do
   resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index] do
      member do
        patch "/accept", to: "bookings#accept"
        patch "/reject", to: "bookings#reject"
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

