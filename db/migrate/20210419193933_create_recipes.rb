class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.boolean :featured
      t.text :ingredients
      t.text :steps
      t.datetime :submit_date
      t.string :image_url

      t.timestamps
    end
  end
end
