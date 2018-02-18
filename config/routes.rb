Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  resources :posts
  root to: 'posts#index'
  post '/post_update', to: 'posts#post_update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
