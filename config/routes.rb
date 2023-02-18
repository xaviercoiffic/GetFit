Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resources :packages
  resources :bookings do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :destroy, :update, :edit]

  get 'index' => 'users#index'
end
