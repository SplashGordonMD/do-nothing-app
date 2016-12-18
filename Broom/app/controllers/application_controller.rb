class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	get '/brooms' => 'brooms#index'
	get '/brooms/new' => 'brooms#new'
	post '/brooms' => 'brooms#create'

end
