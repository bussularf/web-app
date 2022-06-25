Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chatrooms do
    resources :messages, only: :create
  end
end
