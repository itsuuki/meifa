Rails.application.routes.draw do
  resources :products
  devise_for :users

  root "coordinations#index"

  
  resources :coordinations, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :favorites, only: [:new, :create, :destory]
    get :search, on: :collection
  end
  resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :outers, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :inners, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :bottoms, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :shoes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :hats, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :accessories, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
