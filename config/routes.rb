Rails.application.routes.draw do
  get 'surveys/index'

  get 'surveys/show'

  get 'surveys/create'

  get 'surveys/update'

  get 'surveys/destroy'

  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
