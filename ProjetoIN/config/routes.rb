Rails.application.routes.draw do
  resources :comment_questions
  resources :comment_articles
  resources :comments
  resources :user_articles
  resources :articles
  resources :questions
  root to: 'sessions#new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
