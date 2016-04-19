Rails.application.routes.draw do

  devise_for :users
  root to: 'users#feed'
  resources :pictures do
    post :vote
  end

end
