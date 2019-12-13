Rails.application.routes.draw do
  devise_for :users

  root "items#index"

  get 'mypage', to: 'items#mypage'

  get 'registration', to: 'users#registration'
  get 'login', to: 'users#login'
  get 'info', to: 'users#info'
  get 'complete', to: 'users#complete'
  get 'confirm', to: 'users#confirm'
  get 'address', to: 'users#address'
  get 'payment', to: 'users#payment'
  get 'logout', to: 'items#logout'
  get 'logout', to: 'users#logout'
  get 'credit', to: 'items#credit'
resources :items, only: [:index, :show ,:new]
resources :users, only: [:new, :edit, :create, :show]

end
