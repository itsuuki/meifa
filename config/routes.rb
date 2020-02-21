Rails.application.routes.draw do
  resources :products
  devise_for :users

  root "coordinations#index"

  
  resources :coordinations, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :favorites, only: [:index, :new, :create]
    get :search, on: :collection
  end
  resources :users, only: [:index, :new, :create]
  resources :outers, only: [:index, :new, :create]
  resources :inners, only: [:index, :new, :create]
  resources :bottoms, only: [:index, :new, :create]
  resources :shoes, only: [:index, :new, :create]
  resources :hats, only: [:index, :new, :create]
  resources :accessories, only: [:index, :new, :create]
end
