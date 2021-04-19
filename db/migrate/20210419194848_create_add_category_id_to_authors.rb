class CreateAddCategoryIdToAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :add_category_id_to_authors do |t|
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
