Rails.application.routes.draw do

  resources :posts
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'yvesomda', to: 'users#yvesomda'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
