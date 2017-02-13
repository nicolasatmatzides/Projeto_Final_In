Rails.application.routes.draw do
  resources :user_articles
  resources :comments
  resources :answers
  resources :articles
  resources :questions
  resources :users
  root to: 'sessions#new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/home', to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
