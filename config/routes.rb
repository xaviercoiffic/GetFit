Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'pofile', to: 'pages#profile'

  resources :users do 
    resources :bookings
  end

get 'index' => 'users#index'
get '/bookings/:id', to: 'bookings#show', as: 'booking'
get 'users/:id/bookings/:id/confirmation', to: 'bookings#confirmation', as: 'confirmation_booking'
get 'confirmation_success', to: 'bookings#confirmation_success'

end
