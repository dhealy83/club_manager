Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  authenticated :user, ->(user) { user.admin? } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end

  resources :home_posts
  get 'home_posts/index'
  get 'pages/members'
  get 'pages/leagues'
  get 'pages/tournaments'
  get 'pages/bag_tags'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root 'home_posts#index'

end
