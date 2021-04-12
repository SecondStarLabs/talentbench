require 'sidekiq/web'

Rails.application.routes.draw do
  resources :skills
  resources :freelancer_artist_profiles
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/index', to: "freelancer_artist_profiles#index", as: :charged_rate


authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :services
    resources :notifications
    resources :users
    resources :announcements
    namespace :active_storage do
      resources :attachments
    end
    namespace :active_storage do
      resources :variant_records
    end
    namespace :active_storage do
      resources :blobs
    end
    root to: "dashboard#show"
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
