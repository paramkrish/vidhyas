Rails.application.routes.draw do
  get 'categories/create'

  get 'categories/view'

  get 'categories/edit'

  get 'categories/show'

  get 'categories/update'

  get 'categories/index'

  get 'categories/new'

  get 'categories/delete'

  get 'recipes/index'

  get 'recipes/edit'

  get 'recipes/new'

  get 'recipes/destroy'

  get 'recipes/create'

  get 'recipes/update'

  get 'recipes/show'

  resources :recipes
  #resources :categories

resources :categories do
  resources :recipes
end  

  get '/recipes/:id/:title' => 'recipes#show', :as => :recipes_with_id
  get '/categories/:id/:title' => 'categories#show', :as => :categories_with_id

 
  root 'recipes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
