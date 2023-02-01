Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/members'
  get 'pages/leagues'
  get 'pages/tournaments'
  get 'pages/bag_tags'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root 'pages#home'

  devise_for :users
end
