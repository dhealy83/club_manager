Rails.application.routes.draw do
  resources :home_posts
  get 'pages/members'
  get 'pages/leagues'
  get 'pages/tournaments'
  get 'pages/bag_tags'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root 'home_posts#index'

  devise_for :users
end
