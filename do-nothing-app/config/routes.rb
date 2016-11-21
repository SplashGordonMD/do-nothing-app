Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/shows' => 'shows#index'
  get '/shows/new' => 'shows#new'
  post '/shows' => 'shows#create'
  get '/shows/:id' => 'shows#show'
  get '/shows/:id/edit' => 'shows#edit'
  patch '/shows/:id' => 'shows#update'
  delete '/shows/:id' => 'shows#destroy'
end
