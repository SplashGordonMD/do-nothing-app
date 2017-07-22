Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sports' => 'sports#index'
  get '/sports/new' => 'sports#new'
  post '/sports' => 'sports#create'
  get '/sports/:id' => 'sports#show'
  get '/sports/:id/edit' => 'sports#edit'
  patch '/sports/:id' => 'sports#update'
  delete '/sports/:id' => 'sports#destroy'  
end
