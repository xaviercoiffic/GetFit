Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users
  resources :packages
  resources :bookings do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :destroy, :update, :edit]

get 'index' => 'users#index'
end
