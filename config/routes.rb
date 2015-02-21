Rails.application.routes.draw do
  resources :tasks
  resources :users
  root 'welcome#index'
  get '/terms', to: 'terms#index'
  get '/about', to: 'about#index'
  get '/faq', to: 'faq#index'
end
