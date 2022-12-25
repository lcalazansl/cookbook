Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes
  resources :ingredients


  # get 'recipes', to: 'recipes#index'
  # get 'recipes/new', to: 'recipes#new', as: :new_recipe
  # post 'recipes', to: 'recipes#create'
  # get 'recipes/:id', to: 'recipes#show', as: :recipe
  # get 'recipes/:id/edit', to: 'recipes#edit', as: :edit_recipe
  # patch 'recipes/:id', to: 'recipes#update'
  # delete 'recipes/:id', to: 'recipes#destroy'
end
