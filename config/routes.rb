Rails.application.routes.draw do
  post 'users/register', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
