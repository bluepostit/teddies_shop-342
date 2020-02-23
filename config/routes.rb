Rails.application.routes.draw do
  devise_for :users
  root to: 'teddies#index'
  resources :teddies, only: %i[index show]
end
