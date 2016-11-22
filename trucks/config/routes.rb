Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/trucks" => "trucks#index"
  get "/trucks/new" => "trucks#new"
  post "/trucks" => "trucks#create"
  get "/trucks/:id" => "trucks#show"
  get "/trucks/:id/edit" => "trucks#edit"
  patch "/trucks/:id" => "trucks#update"
  delete "/trucks/:id" => "trucks#destroy"
end
