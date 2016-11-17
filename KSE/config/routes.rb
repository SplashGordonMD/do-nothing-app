Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/lucky' => 'pages#fortune_method'
  get '/lotto' => 'pages#lotto_mothod'
end
