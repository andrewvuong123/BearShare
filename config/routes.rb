Rails.application.routes.draw do
  
  root to: "home#index"
  get 'home/index'
  
  resources :group_user_roosters
  resources :groups, except: :update
  resources :posts

  patch "groups/join/:id", to: "groups#join", as: "join"
  
  devise_for :users

  patch "/posts/:id/like", to: "posts#like", as: "like"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
