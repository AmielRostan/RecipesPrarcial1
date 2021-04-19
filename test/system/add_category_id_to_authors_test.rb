require "application_system_test_case"

class AddCategoryIdToAuthorsTest < ApplicationSystemTestCase
  setup do
    @add_category_id_to_author = add_category_id_to_authors(:one)
  end

  test "visiting the index" do
    visit add_category_id_to_authors_url
    assert_selector "h1", text: "Add Category Id To Authors"
  end

  test "creating a Add category id to author" do
    visit add_category_id_to_authors_url
    click_on "New Add Category Id To Author"

    fill_in "Category", with: @add_category_id_to_author.category_id
    click_on "Create Add category id to author"

    assert_text "Add category id to author was successfully created"
    click_on "Back"
  end

  test "updating a Add category id to author" do
    visit add_category_id_to_authors_url
    click_on "Edit", match: :first

    fill_in "Category", with: @add_category_id_to_author.category_id
    click_on "Update Add category id to author"

    assert_text "Add category id to author was successfully updated"
    click_on "Back"
  end

  test "destroying a Add category id to author" do
    visit add_category_id_to_authors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add category id to author was successfully destroyed"
  end
end
