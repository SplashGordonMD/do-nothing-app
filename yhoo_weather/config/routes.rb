Rails.application.routes.draw do
  get '/forcasts' => 'forcasts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
