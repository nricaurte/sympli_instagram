Rails.application.routes.draw do
  get 'profile/:username', to:"profile#index"

  get 'followers/requests_by_user'
  resources :comments
  resources :likes
  resources :posts
  resources :followers
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
