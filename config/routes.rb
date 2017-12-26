Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  authenticated :user do
    root to: "home#index"
  end

  devise_scope :user do
    root 'devise/sessions#new'
  end

  resources :authentications, only: [:destroy]

  namespace :admin do
    root to: "users#index"

    resources :users
  end
end
