Rails.application.routes.draw do
  get'/bugs' => 'bugs#index'
  get'/bugs/new' => 'bugs#new'
  post '/bugs' => 'bugs#create'
  get '/bugs/:id' => 'bugs#show'
  get '/bugs/:id/edit' => 'bugs#edit'
  patch 'bugs/:id' => 'bugs#update'
  delete '/bugs/:id' => 'bugs#destroy'
end

