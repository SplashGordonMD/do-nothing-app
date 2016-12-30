Rails.application.routes.draw do
  

  get '/hunters' => 'hunters#index'
  get '/hunters/new' => 'hunters#new'
  post '/hunters' => 'hunters#create'
  get '/hunters/:id' => 'hunters#show'
  get '/hunters/:id/edit' => 'hunters#edit'
  patch '/hunters/:id' => 'hunters#update'
  delete '/hunters/:id' => 'hunters#destroy'
end
