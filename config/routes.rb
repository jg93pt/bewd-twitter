Rails.application.routes.draw do
  root 'homepage#index'
  get '/feeds'                    => 'feeds#index'

  # USERS
  post '/users'                   => 'users#create'

  # SESSIONS
  get '/authenticated'            => 'sessions#authenticated'
  post '/sessions'                => 'sessions#create'
  delete '/sessions'              => 'sessions#destroy'

  # TWEETS


  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path'    => 'homepage#index'
end
