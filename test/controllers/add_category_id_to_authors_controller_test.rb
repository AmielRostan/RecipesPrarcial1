require "test_helper"

class AddCategoryIdToAuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_category_id_to_author = add_category_id_to_authors(:one)
  end

  test "should get index" do
    get add_category_id_to_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_add_category_id_to_author_url
    assert_response :success
  end

  test "should create add_category_id_to_author" do
    assert_difference('AddCategoryIdToAuthor.count') do
      post add_category_id_to_authors_url, params: { add_category_id_to_author: { category_id: @add_category_id_to_author.category_id } }
    end

    assert_redirected_to add_category_id_to_author_url(AddCategoryIdToAuthor.last)
  end

  test "should show add_category_id_to_author" do
    get add_category_id_to_author_url(@add_category_id_to_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_category_id_to_author_url(@add_category_id_to_author)
    assert_response :success
  end

  test "should update add_category_id_to_author" do
    patch add_category_id_to_author_url(@add_category_id_to_author), params: { add_category_id_to_author: { category_id: @add_category_id_to_author.category_id } }
    assert_redirected_to add_category_id_to_author_url(@add_category_id_to_author)
  end

  test "should destroy add_category_id_to_author" do
    assert_difference('AddCategoryIdToAuthor.count', -1) do
      delete add_category_id_to_author_url(@add_category_id_to_author)
    end

    assert_redirected_to add_category_id_to_authors_url
  end
end
