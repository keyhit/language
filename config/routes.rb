Rails.application.routes.draw do
  devise_for :users
  resources :translations
  resources :collects
  resources :categories do
    resources :users
  end
  resources :langs do
    resources :users
  end
  resources :words
  # resources :searches
  get '/searches', to: 'searches#search_results', as: 'search_results'
  root 'words#index'
end
