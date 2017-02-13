Rails.application.routes.draw do
	get '/attemps' => 'attemps#index'
	get '/attemps/new' => 'attemps#new'
	post '/attemps' => 'attemps#create'
	get '/attemps/:id' => 'attemps#show'
	get '/attemps/:id/edit' => 'attemps#edit'
	patch '/attemps/:id' => 'attemps#update'
	delete '/attemps/id' => 'attemps#destroy'
end
