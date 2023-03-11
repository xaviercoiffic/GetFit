Rails.application.routes.draw do
  get 'messages/create'
  get 'chatroom_users/new'
  get 'chatroom_users/create'
  get 'profile', to: 'pages#profile'
  devise_for :users
  root to: "pages#home"


  resources :users do
    resources :packages
    resources :bookings do
      resources :reviews, only: [:new, :create, :show]
    end
    resources :chatrooms, only: %i[create new]
  end


  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
    get '/messages', to: 'messages#index'
  end

get 'index' => 'users#index'
get '/bookings/:id', to: 'bookings#show', as: 'booking'
get 'users/:user_id/bookings/:id/confirmation', to: 'bookings#confirmation', as: 'confirmation_booking'
end
