require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  resources :iframe_contents
  resources :contents do
    member do
      get 'details'
    end
    collection do
      get 'tags'
    end
  end
  # devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  root 'contents#index'
  mount Sidekiq::Web, at:'/sidekiq'
end
