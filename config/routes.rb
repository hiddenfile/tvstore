Rails.application.routes.draw do
  devise_for :users

  resources :links, only: [:index, :create]

  root to: 'links#index'
end
