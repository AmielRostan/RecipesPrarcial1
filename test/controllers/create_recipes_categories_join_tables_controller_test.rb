require "test_helper"

class CreateRecipesCategoriesJoinTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_recipes_categories_join_table = create_recipes_categories_join_tables(:one)
  end

  test "should get index" do
    get create_recipes_categories_join_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_create_recipes_categories_join_table_url
    assert_response :success
  end

  test "should create create_recipes_categories_join_table" do
    assert_difference('CreateRecipesCategoriesJoinTable.count') do
      post create_recipes_categories_join_tables_url, params: { create_recipes_categories_join_table: { categories: @create_recipes_categories_join_table.categories, recipes: @create_recipes_categories_join_table.recipes } }
    end

    assert_redirected_to create_recipes_categories_join_table_url(CreateRecipesCategoriesJoinTable.last)
  end

  test "should show create_recipes_categories_join_table" do
    get create_recipes_categories_join_table_url(@create_recipes_categories_join_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_recipes_categories_join_table_url(@create_recipes_categories_join_table)
    assert_response :success
  end

  test "should update create_recipes_categories_join_table" do
    patch create_recipes_categories_join_table_url(@create_recipes_categories_join_table), params: { create_recipes_categories_join_table: { categories: @create_recipes_categories_join_table.categories, recipes: @create_recipes_categories_join_table.recipes } }
    assert_redirected_to create_recipes_categories_join_table_url(@create_recipes_categories_join_table)
  end

  test "should destroy create_recipes_categories_join_table" do
    assert_difference('CreateRecipesCategoriesJoinTable.count', -1) do
      delete create_recipes_categories_join_table_url(@create_recipes_categories_join_table)
    end

    assert_redirected_to create_recipes_categories_join_tables_url
  end
end
