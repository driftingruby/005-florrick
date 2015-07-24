Rails.application.routes.draw do
  resources :notifications
  resources :users
  root to: 'visitors#index'
end
