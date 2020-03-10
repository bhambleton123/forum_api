Rails.application.routes.draw do
  post 'users/register', to: 'users#create'
  get 'user', to: 'users#get_user'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #categories routes
  get 'categories', to: 'categories#get'
  post 'category/create', to: 'categories#create'
  delete 'category/delete', to: 'categories#destroy'

  #video game routes
  get 'video_games/:category_name', to: 'video_games#get'
  post 'video_games/:category_name', to: 'video_games#create'
  delete 'video_games/:category_name/:title', to: 'video_games#delete'

  #video game thread routes
  get 'video_games/:title/threads', to: 'video_game_threads#get'
  post 'video_games/:title/threads', to: 'video_game_threads#create'
  delete 'thread/:id', to: 'video_game_threads#destroy'
end
