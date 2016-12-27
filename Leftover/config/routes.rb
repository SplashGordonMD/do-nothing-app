Rails.application.routes.draw do
  get '/extras' => 'extras#index'
  get '/extras/new' => 'extras#new'
  post '/extras' => 'extras#create'
  get '/extras/:id' => 'extras#show'
  get '/extras/:id/edit' => 'extras#edit'
  patch '/extras/:id' => 'extras#update'
  delete '/extras/:id' => 'extras#destroy'
end


