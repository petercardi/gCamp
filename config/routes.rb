Rails.application.routes.draw do
  resources :tasks
  resources :users
  resources :projects
  root 'welcome#index'
  get '/terms', to: 'terms#index'
  get '/about', to: 'about#index'
  get '/faq', to: 'faq#index'
  get '/tasks', to: 'tasks#index'
  get '/projects', to: 'projects#index'
end
