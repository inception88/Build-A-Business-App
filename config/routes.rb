Rails.application.routes.draw do
  root 'users#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'users#facebook'
  get '/users/fb' => 'users#fb'


  resources :favorites
  resources :ratings
  resources :appointments
  resources :stores do
    # nested resource for ratings
    resources :ratings, only: [:index, :new]
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
