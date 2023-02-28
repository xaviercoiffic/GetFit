Rails.application.routes.draw do
  get 'messages/create'
  get 'chatroom_users/new'
  get 'chatroom_users/create'
  devise_for :users
  root to: "pages#home"
  get 'profile', to: 'pages#profile'

  resources :users do
    resources :packages
    resources :bookings
  end

  resources :chatrooms, only: :show do
  resources :messages, only: :create
  end

get 'index' => 'users#index'
get '/bookings/:id', to: 'bookings#show', as: 'booking'
get 'users/:user_id/bookings/:id/confirmation', to: 'bookings#confirmation', as: 'confirmation_booking'
end
