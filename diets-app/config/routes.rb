Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  get '/diets' => 'diets#index'
  get '/diets/new' => 'diets#new'
  post '/diets' => 'diets#create'
  get '/diets/:id' => 'diets#show' 
  get '/diets/:id/edit' => 'diets#edit'
  patch '/diets/:id' => 'diets#update'
  delete '/diets/:id' => 'diets#destroy'

end   