Rails.application.routes.draw do
  
  get '/contacts/recieved' => 'contacts#recieved'

  resources :contacts, except: [:edit,:update]
  resources :barns
  resources :reports
  resources :animals
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'

  patch '/confirm' => 'reports#confirm'
  patch '/users/info' => 'users#update_info'



  devise_for :users
  resources :users

end
