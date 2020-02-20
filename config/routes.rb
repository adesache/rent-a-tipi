Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tents, except: [:index]
  resources :tents, only: [] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:show]

  get '/:id/dashboard', to: "users#dashboard", as: :profile

  root to: 'tents#index'
end
