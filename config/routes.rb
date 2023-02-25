Rails.application.routes.draw do
  get 'messages/create'
  get 'chatroom_users/new'
  get 'chatroom_users/create'
  devise_for :users
  root to: "pages#home"
  get 'pofile', to: 'pages#profile'

  resources :users do
    resources :bookings
  end

  Rails.application.routes.draw do
    resources :chatrooms do
    resources :chatroom_users, only: [:new, :create]
    resources :messages, only: [:create]
    end
  end

get 'index' => 'users#index'
get '/bookings/:id', to: 'bookings#show', as: 'booking'
get 'users/:id/bookings/:id/confirmation', to: 'bookings#confirmation', as: 'confirmation_booking'
get 'confirmation_success', to: 'bookings#confirmation_success'

end
