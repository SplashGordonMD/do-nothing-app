Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/zoos' => 'zoos#index'
  get 'zoos/new' => 'zoos#new'
  post '/zoos' => 'zoos#create'
  get '/zoos/:id' => 'zoos#show'
  get '/zoos/:id/edit' => 'zoos#edit'
  patch '/zoos/:id' => 'zoos#update'
  delete '/zoos/:id' => 'zoos#destroy' 
end
