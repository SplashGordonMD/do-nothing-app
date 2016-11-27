Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/strokes' => 'strokes#index'
  get '/strokes/new' => 'strokes#new'
  post '/strokes' => 'strokes#create'
  get '/strokes/:id' => 'strokes#show'
  get '/strokes/:id/edit' => 'strokes#edit'
  patch '/strokes/:id' => 'strokes#update'
  delete '/strokes/:id' => 'strokes#destroy'
end



