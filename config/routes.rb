Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  get '/registration', to: 'users#new'
  post '/registration', to: 'users#create'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :dashboard, only: [:index]
  resources :discover, only: [:index]
  resources :movies, only: [:index, :show]
  resources :friendships, only: [:create]
  resources :viewing_party, only: [:new, :create]
end
