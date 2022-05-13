Rails.application.routes.draw do
  devise_for :players
  root to: 'games#index'
  get "dashboard", to: "pages#dashboard"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reservations, only: [:update, :destroy]

  resources :games do
    resources :reservations, only: [:new,:create]
    resources :reviews, only: [:create], except: [:index, :show]
  end
end
