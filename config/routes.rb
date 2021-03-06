Rails.application.routes.draw do
  devise_for :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :activity
  root :to => 'home#index'
  post 'activities', to: 'home#index'
  get 'profile', to: 'profile#index'
  get 'statistics', to: 'statistics#index'

end
