Rails.application.routes.draw do
  devise_for :players
  root to: 'games#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :games do
    resources :reservations, only: [:new,:create, :destroy]
    resources :review, only: [:new,:create]
  end
end
