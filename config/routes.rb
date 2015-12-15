Rails.application.routes.draw do
  resources :contacts, except: [:edit,:update]
  resources :barns
  resources :reports
  resources :animals
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'

  devise_for :users
  resources :users

end
