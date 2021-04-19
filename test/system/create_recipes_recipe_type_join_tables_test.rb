require "application_system_test_case"

class CreateRecipesRecipeTypeJoinTablesTest < ApplicationSystemTestCase
  setup do
    @create_recipes_recipe_type_join_table = create_recipes_recipe_type_join_tables(:one)
  end

  test "visiting the index" do
    visit create_recipes_recipe_type_join_tables_url
    assert_selector "h1", text: "Create Recipes Recipe Type Join Tables"
  end

  test "creating a Create recipes recipe type join table" do
    visit create_recipes_recipe_type_join_tables_url
    click_on "New Create Recipes Recipe Type Join Table"

    fill_in "Recipe types", with: @create_recipes_recipe_type_join_table.recipe_types
    fill_in "Recipes", with: @create_recipes_recipe_type_join_table.recipes
    click_on "Create Create recipes recipe type join table"

    assert_text "Create recipes recipe type join table was successfully created"
    click_on "Back"
  end

  test "updating a Create recipes recipe type join table" do
    visit create_recipes_recipe_type_join_tables_url
    click_on "Edit", match: :first

    fill_in "Recipe types", with: @create_recipes_recipe_type_join_table.recipe_types
    fill_in "Recipes", with: @create_recipes_recipe_type_join_table.recipes
    click_on "Update Create recipes recipe type join table"

    assert_text "Create recipes recipe type join table was successfully updated"
    click_on "Back"
  end

  test "destroying a Create recipes recipe type join table" do
    visit create_recipes_recipe_type_join_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create recipes recipe type join table was successfully destroyed"
  end
end
