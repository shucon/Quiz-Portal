Rails.application.routes.draw do

  get  '/help',    to: 'static_pages#help'
  get  '/signup',   to: 'users#new'
  root 'static_pages#home'
  post '/signup',  to: 'users#create'  
  resources :users

end
