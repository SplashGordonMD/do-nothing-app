Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/golf_clubs' => 'golf_clubs#index'
      post '/golf_clubs' => 'golf_clubs#create'
      get '/golf_clubs/:id' => 'golf_clubs#show'
    end
  end

  get '/golf_clubs' => 'golf_clubs#index'
end
