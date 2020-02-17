Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tents
  resources :tents do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:show]

  root to: 'tents#index'
end
