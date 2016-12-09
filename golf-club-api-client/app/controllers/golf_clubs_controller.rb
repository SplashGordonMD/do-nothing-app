class GolfClubsController < ApplicationController
  get '/golf_clubs' => 'golf_clubs#index'
  get '/golf_clubs/new' => 'golf_clubs#new'
  post '/golf_clubs' => 'golf_clubs#create'
  get '/golf_clubs/:id' => 'golf_clubs#show'
  get '/golf_clubs/:id/edit' => 'golf_club#edit'
  patch '/golf_clubs/:id' => 'golf_clubs#update'
  delete '/golf_clubs/:id' => 'golf_clubs#destroy'
end
