Rails.application.routes.draw do
  get '/stages' => 'stages#index'
  get '/stages/new' => 'stages#new'
  get '/stages/:id' => 'stages#show'
  post '/stages' => 'stages#create' 
  get '/stages/:id/edit' => 'stages#edit'
  patch '/stages/:id' => 'stages#update'
  delete '/stages/:id' => 'stages#destroy'




  # get '/stages/' => ''
  # post '/stages/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
