Rails.application.routes.draw do
  devise_for :players
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do
    resources :reservations
  end
end
