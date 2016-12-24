Rails.application.routes.draw do
  get '/icecreams' => 'icecreams#index'
  get '/icecreams/new' => 'icecreams#new'
  post '/icecreams' => 'icecreams#create'
  get '/icecreams/:id' => 'icecreams#show'
  get '/icecreams/:id/edit' => 'icereams#edit'
  patch '/icecreams/:id' => 'icecreams#update'
  delete '/icecreams/:id' => 'icecreams#destroy'
end
