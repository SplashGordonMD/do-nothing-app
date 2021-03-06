Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/cars' => 'cars#index'
  get '/cars/new' => 'cars#new'
  post '/cars' => 'cars#create'
  get '/cars/:id' => 'cars#show'
  get '/cars/:id/edit' => 'cars#edit'
  patch '/cars/id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'
end
