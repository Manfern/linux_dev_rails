Rails.application.routes.draw do
  resources :posts
  # get 'index', to: 'posts#index'

  # root to: "posts#index"
  # get '/posts/index', to: 'posts#index'
  # get '/posts/list', to: 'posts#list'
  # get '/posts/new', to: 'posts#create'
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/edit', to: 'posts#edit'

  # get '/posts/edit/:id', to: 'posts#edit', as: 'post'
end
