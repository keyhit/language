Rails.application.routes.draw do
  devise_for :users
  resources :translations
  resources :collects
  resources :categories
  resources :langs do
    resources :users
  end
  resources :words
  root 'langs#index'
end
