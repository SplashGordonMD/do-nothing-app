Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/query_params_url' => 'params_examples#query_params_method'
  get '/url_segment_params_url/:this_is_a_varable' => 'games_lines#url_segment_params_method'#guessing_game_method'
  get '/form_params_url' => 'games_lines#form_params_method'
  post '/form_result_url' => 'params_examples#form_result_method'

end
