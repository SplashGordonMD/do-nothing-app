Rails.application.routes.draw do
	get '/pets' => 'pets#index'
	get '/pets/new' => 'pets#new'
	post '/pets' => 'pets#create'
	get '/pets/:id' => 'pets#show'
	get 'pets/:id/edit' => 'pets#edit'
	patch 'pets/:id' => 'pets#update'
	delete 'pets/:id' => 'pets#destroy'
end
