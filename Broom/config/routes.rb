Rails.application.routes.draw do
	get '/broom' => 'sweeps#index'
end
