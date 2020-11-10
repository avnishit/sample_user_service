Rails.application.routes.draw do
  get '/', to: 'sessions#home'
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  post 'signout', to: 'sessions#destroy'
  get 'home', to: 'sessions#home'
  get 'health_check/basic'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
