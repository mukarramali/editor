Rails.application.routes.draw do
  resources :posts
  post '/post_update', to: 'posts#post_update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
