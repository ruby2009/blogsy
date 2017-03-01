Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get "/posts" => 'posts#index'
get "/users" => 'users#index'
post "/users" => 'users#create'
get "/posts/:id" => 'posts#show'
get "/posts/:id/comments" => 'posts#show_comments'
post "/comments" => 'comments#create'
get "/users/:id/posts" => 'users#users_posts'
end
