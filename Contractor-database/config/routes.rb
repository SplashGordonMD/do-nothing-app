Rails.application.routes.draw do
  get 'comments/text:text'

  get 'comments/user_id:integer'

  get 'comments/review_id:integer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
