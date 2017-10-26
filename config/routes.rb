Rails.application.routes.draw do
  resources :distances
  resources :posts
  resources :races
  resources :users

  # Go straight to home index page
  root 'home#index'

  # If adding friend
  get 'friendship' => 'users#add_friend', as: :friendship

  # If adding friend
  post 'friendship' => 'users#add_friend'

  # If login form is filled, handle login
  post 'login' => "home#handle_login", as: :login

  # If new user, lead to signup form
  get 'signup' => "home#signup", as: :signup

  # If signup form is filled, handle signup
  post 'signup' => "home#handle_signup"

  # Logout user
  get 'logout' => "home#handle_logout", as: :logout

  # Search for friends
  get 'search' => "users#search", as: :search

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

