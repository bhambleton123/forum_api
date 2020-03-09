Rails.application.routes.draw do
  post 'users/register', to: 'users#create'
  get 'user', to: 'users#get_user'

  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
