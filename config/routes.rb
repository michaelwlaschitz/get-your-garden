Rails.application.routes.draw do
  get 'gardens/index'
  get 'gardens/new'
  get 'gardens/create'
  get 'gardens/show'
  get 'gardens/edit'
  get 'gardens/update'
  devise_for :users
  root to: 'pages#home'
  resources :garden, only: [:index, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
