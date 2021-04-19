class CreateCreateRecipesAuthorsJoinTables < ActiveRecord::Migration[6.1]
  def change
    create_table :create_recipes_authors_join_tables do |t|
      t.string :recipes
      t.string :authors

      t.timestamps
    end
  end
end
