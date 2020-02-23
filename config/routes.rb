Rails.application.routes.draw do
  devise_for :users
  root to: 'teddies#index'
  resources :teddies, only: %i[index show]
  resources :orders, only: %i[show create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
