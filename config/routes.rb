Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :heropowers
  resources :powers
  resources :heroes, only: [:index, :show, :create]
end
