Rails.application.routes.draw do
  resources :create_recipes_authors_join_tables
  resources :add_category_id_to_authors
  resources :create_recipes_recipe_type_join_tables
  resources :create_recipes_categories_join_tables
  resources :recipe_types
  resources :authors
  resources :categories
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "authors#index"
end
