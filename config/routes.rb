Rails.application.routes.draw do
  root to: 'homes#about'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  devise_for :users

  resources :posts

end