Rails.application.routes.draw do
  devise_for :users
  root to: 'tents#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tents, except: [:index]
  resources :tents do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:show]
end
Collapse













