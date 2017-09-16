Rails.application.routes.draw do

  get 'sessions/new'
  get  '/help',    to: 'static_pages#help'
  get  '/signup',   to: 'users#new'
  root 'static_pages#home'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'  
  resources :users

end
