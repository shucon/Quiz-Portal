Rails.application.routes.draw do


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
