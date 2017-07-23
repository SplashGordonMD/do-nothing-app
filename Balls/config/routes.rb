Rails.application.routes.draw do
  get '/sports' => 'sports#index'
  get '/sports/new' => 'sports#new'
  post '/sports' => 'sports#create'
  get '/sports/:id' => 'sports#show'
  get '/sports/:id/edit' => 'sports#edit'
  patch '/sports/:id' => 'sports#update'
  delete '/sports/:id' => 'sports#destroy'  
end

 #get '/contacts_johns' => 'contacts#index_johns'
 # get '/signup' => 'users#new'
 # post '/users' => 'users#create'
  #get '/login' => 'sessions#new'
 # post '/login' => 'sessions#create'
  #get '/logout' => 'sessions#destroy'
#end