class AddCategoryIdToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :category_id, :integer
  end
end
