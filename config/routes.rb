Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  root to: 'cleaning_posts#new'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
