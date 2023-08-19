Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  resources :books, only: [:show, :destroy]
  resources :publishers
  resource :profile
  resources :sidekiq_sample, only: [:index, :create]
  require 'sidekiq/web'
  mount Sidekiq::Web, at: "/sidekiq"
end
