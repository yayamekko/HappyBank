Rails.application.routes.draw do
  resources :users
  get 'login/new_user'
  post 'login/new_user' => "login#new_user"

  get 'login/login'

  resources :happy_things
  get 'happy_entry/happyentry'

  root 'application#index'
end
