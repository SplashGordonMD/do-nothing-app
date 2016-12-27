Rails.application.routes.draw do
  get '/homes' => 'homes#index'
  get '/homes/new' => 'homes#new'
  post '/homes' => 'homes#create'
  get '/homes/:id' => 'homes#show'
  get '/homes/:id/edit' => 'homes#edit'
  patch '/homes/:id' => 'homes#update'
  delete '/homes/:id' => 'homes#destroy'
end
