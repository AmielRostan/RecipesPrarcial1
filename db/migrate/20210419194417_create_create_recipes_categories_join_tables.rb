class CreateCreateRecipesCategoriesJoinTables < ActiveRecord::Migration[6.1]
  def change
    create_table :create_recipes_categories_join_tables do |t|
      t.string :recipes
      t.string :categories

      t.timestamps
    end
  end
end
