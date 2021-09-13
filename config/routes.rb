# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # resources :posts
  root 'articles#index'
  resources :articles do
    resources :comments
  end
end
