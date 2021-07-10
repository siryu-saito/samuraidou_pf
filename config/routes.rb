Rails.application.routes.draw do
  root to: 'homes#about'

  devise_for :users

end