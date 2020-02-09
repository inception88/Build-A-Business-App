Rails.application.routes.draw do
  root 'users#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'users#facebook'

  resources :favorites
  resources :ratings
  resources :appointments
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
