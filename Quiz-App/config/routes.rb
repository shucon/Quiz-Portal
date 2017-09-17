Rails.application.routes.draw do



  get '/view_leader_board',    to: 'leader_board#user_render'
  get '/leader_board',    to: 'leader_board#user'
  get 'leader_board/admin'
  get '/add_genre',    to: 'question#genre'
  post '/add_genre',  to: 'question#creategenre'
  get '/quiz',    to: 'play#new'
  get '/play',    to: 'play#play'
  post '/play',    to: 'play#check'
  get '/add_question',    to: 'question#new'
  post '/add_question',  to: 'question#create'
  get '/admin_login',    to: 'admin#new'
  post   '/admin_login',   to: 'admin#create'
  delete '/admin_logout',  to: 'admin#destroy'  
  get  '/help',    to: 'static_pages#help'
  get  '/signup',   to: 'users#new'
  root 'static_pages#home'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'  
  resources :users

end
