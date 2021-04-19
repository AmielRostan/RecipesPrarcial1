require "test_helper"

class CreateRecipesRecipeTypeJoinTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_recipes_recipe_type_join_table = create_recipes_recipe_type_join_tables(:one)
  end

  test "should get index" do
    get create_recipes_recipe_type_join_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_create_recipes_recipe_type_join_table_url
    assert_response :success
  end

  test "should create create_recipes_recipe_type_join_table" do
    assert_difference('CreateRecipesRecipeTypeJoinTable.count') do
      post create_recipes_recipe_type_join_tables_url, params: { create_recipes_recipe_type_join_table: { recipe_types: @create_recipes_recipe_type_join_table.recipe_types, recipes: @create_recipes_recipe_type_join_table.recipes } }
    end

    assert_redirected_to create_recipes_recipe_type_join_table_url(CreateRecipesRecipeTypeJoinTable.last)
  end

  test "should show create_recipes_recipe_type_join_table" do
    get create_recipes_recipe_type_join_table_url(@create_recipes_recipe_type_join_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_recipes_recipe_type_join_table_url(@create_recipes_recipe_type_join_table)
    assert_response :success
  end

  test "should update create_recipes_recipe_type_join_table" do
    patch create_recipes_recipe_type_join_table_url(@create_recipes_recipe_type_join_table), params: { create_recipes_recipe_type_join_table: { recipe_types: @create_recipes_recipe_type_join_table.recipe_types, recipes: @create_recipes_recipe_type_join_table.recipes } }
    assert_redirected_to create_recipes_recipe_type_join_table_url(@create_recipes_recipe_type_join_table)
  end

  test "should destroy create_recipes_recipe_type_join_table" do
    assert_difference('CreateRecipesRecipeTypeJoinTable.count', -1) do
      delete create_recipes_recipe_type_join_table_url(@create_recipes_recipe_type_join_table)
    end

    assert_redirected_to create_recipes_recipe_type_join_tables_url
  end
end
