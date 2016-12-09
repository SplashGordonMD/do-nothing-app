Rails.application.routes.draw do
  get '/golf_clubs' => 'golf_clubs#index'

  
  get '/golf_clubs/:id' => 'golf_clubs#show'
end
