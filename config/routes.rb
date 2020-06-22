Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/plants', to: 'plants#index'
  get '/plants/:id', to: 'plants#show'

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  post '/users/login', to: 'users#login'

  get '/user_plants', to: 'user_plants#index'
  get '/user_plants/:id', to: 'user_plants#show'
  post '/user_plants', to: 'user_plants#create'
  get '/user_plants/my_plants/:user_id', to: 'user_plants#my_plants' #Get all plants for a user

  get '/carts', to: 'carts#index'
  get '/carts/:id', to: 'carts#show'
  post '/carts', to: 'carts#create'
  get '/carts/my_cart/:user_id', to: 'carts#my_cart' #Get all carts for user
end
