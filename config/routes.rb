Rails.application.routes.draw do

  devise_for :users
  root to: 'users#feed'
  resources :pictures
  resources :likes, only: [:create]
end
