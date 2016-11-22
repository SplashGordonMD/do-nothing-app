Rails.application.routes.draw do
  #get For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/toys' => "toys#index"
  get '/toys/new' => "toys#new"
  post '/toys' => "toys#create"
  get '/toys/:id' => "toys#show"
  get '/toys/:id/edit' => "toys#edit"
  patch '/toys/:id'=> "toys#update"
  delete "/toys/:id"=> "toys#destroy"
end
