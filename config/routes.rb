Rails.application.routes.draw do
  devise_for :users
  get 'search' => 'posts#search'

  root to: 'homes#top'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  resources :posts do
    resources :comments, only: [:create]
  end
  resources :inquiries, only: [:new, :create] do
    collection do
      post :confirm
      get :complete
    end
  end
  resources :users, only: [:show, :edit, :update]
end