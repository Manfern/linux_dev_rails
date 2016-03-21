Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts
  # get '/posts/index', to: 'posts#index'
  # get '/posts/list', to: 'posts#list'
  # get '/posts/new', to: 'posts#create'
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/edit', to: 'posts#edit'
  # get '/posts/edit/:id', to: 'posts#edit', as: 'post'
end
