Rails.application.routes.draw do
  resources :distances
  resources :posts
  resources :races
  resources :users

  get '/' => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
