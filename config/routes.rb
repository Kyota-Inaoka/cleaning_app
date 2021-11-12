Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  root to: 'cleaning_posts#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/sign_up', to: 'users#sign_up'
end
