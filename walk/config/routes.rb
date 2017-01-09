Rails.application.routes.draw do
  get '/jobs' => 'jobs#index'
  get '/jobs/new' => 'jobs#new'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'
  get '/jobs/:id/edit' => 'jobs#edit'
  patch '/jobs/:id' => 'jobs#update'
  delete '/jobs/:id' => 'jobs#destroy'
end
