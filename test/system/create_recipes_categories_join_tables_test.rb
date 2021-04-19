require "application_system_test_case"

class CreateRecipesCategoriesJoinTablesTest < ApplicationSystemTestCase
  setup do
    @create_recipes_categories_join_table = create_recipes_categories_join_tables(:one)
  end

  test "visiting the index" do
    visit create_recipes_categories_join_tables_url
    assert_selector "h1", text: "Create Recipes Categories Join Tables"
  end

  test "creating a Create recipes categories join table" do
    visit create_recipes_categories_join_tables_url
    click_on "New Create Recipes Categories Join Table"

    fill_in "Categories", with: @create_recipes_categories_join_table.categories
    fill_in "Recipes", with: @create_recipes_categories_join_table.recipes
    click_on "Create Create recipes categories join table"

    assert_text "Create recipes categories join table was successfully created"
    click_on "Back"
  end

  test "updating a Create recipes categories join table" do
    visit create_recipes_categories_join_tables_url
    click_on "Edit", match: :first

    fill_in "Categories", with: @create_recipes_categories_join_table.categories
    fill_in "Recipes", with: @create_recipes_categories_join_table.recipes
    click_on "Update Create recipes categories join table"

    assert_text "Create recipes categories join table was successfully updated"
    click_on "Back"
  end

  test "destroying a Create recipes categories join table" do
    visit create_recipes_categories_join_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create recipes categories join table was successfully destroyed"
  end
end
