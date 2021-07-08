Rails.application.routes.draw do
  resources :posts
  resources :bloggers
  resources :destinations
  post '/addlike/:post_id', to: 'posts#like_post', as: 'addlike'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
