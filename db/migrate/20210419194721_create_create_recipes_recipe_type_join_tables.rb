class CreateCreateRecipesRecipeTypeJoinTables < ActiveRecord::Migration[6.1]
  def change
    create_table :create_recipes_recipe_type_join_tables do |t|
      t.string :recipes
      t.string :recipe_types

      t.timestamps
    end
  end
end
