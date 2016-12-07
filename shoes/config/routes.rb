Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/shoes" => 'shoes#index'
  post '/shoes' => 'shoes#create'
  get '/shoes/:id' => 'shoes#show' 
  patch '/shoes/:id' => 'shoes#update'
  delete '/shoes/:id' => 'shoes#destroy'
end

