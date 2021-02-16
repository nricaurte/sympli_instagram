Rails.application.routes.draw do
  get 'profile/:username', to:"profile#index"

  get 'followers/requests_by_user'
  get 'home/index'
  resources :comments
  resources :likes
  resources :posts
  resources :followers
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
