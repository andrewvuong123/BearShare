Rails.application.routes.draw do
  
  root to: "home#index"
  get 'posts'
  
  resources :group_user_roosters
  resources :groups
  resources :posts
  
  devise_for :users

  patch "/posts/:id/like", to: "posts#like", as: "like"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
