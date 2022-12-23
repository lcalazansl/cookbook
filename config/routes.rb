Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'recipes', to: 'recipes#index'
  get 'recipes/new', to: 'recipes#new'
  post 'recipes', to: 'recipes#create'
  get 'recipes', to: 'recipes#show'
end
