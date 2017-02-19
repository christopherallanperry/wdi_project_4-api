Rails.application.routes.draw do
  resources :questions
  resources :users
  resources :surveys
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
