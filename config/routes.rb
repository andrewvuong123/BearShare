Rails.application.routes.draw do
  
  root to: "posts#index"
  get 'home/index'
  
  resources :group_user_roosters
  resources :groups
  resources :posts
  
  devise_for :users

  patch "/posts/:id/like", to: "posts#like", as: "like"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
