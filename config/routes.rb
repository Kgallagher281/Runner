Rails.application.routes.draw do
  resources :distances
  resources :posts
  resources :races
  resources :users

  # Go straight to home index page
  root 'home#index'

  # If login form is filled, handle login
  post 'login' => "home#handle_login", as: :login

  # If new user, lead to signup form
  get 'signup' => "home#signup", as: :signup

  # If signup form is filled, handle signup
  post 'signup' => "home#handle_signup"

  # Show user profile when clicked on navbar
  get '' => "user#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

