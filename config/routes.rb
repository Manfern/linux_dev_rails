Rails.application.routes.draw do

  devise_for :admins
  resources :posts
  root to: "posts#index"
  # get 'index', to: 'posts#index'
  
  # get '/posts/index', to: 'posts#index'
  # get '/posts/list', to: 'posts#list'
  # get '/posts/new', to: 'posts#create'
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/edit', to: 'posts#edit'



end
