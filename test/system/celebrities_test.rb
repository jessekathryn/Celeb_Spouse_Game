require "application_system_test_case"

class CelebritiesTest < ApplicationSystemTestCase
  setup do
    @celebrity = celebrities(:one)
  end

  test "visiting the index" do
    visit celebrities_url
    assert_selector "h1", text: "Celebrities"
  end

  test "creating a Celebrity" do
    visit celebrities_url
    click_on "New Celebrity"

    fill_in "Birth year", with: @celebrity.birth_year
    fill_in "Fame type", with: @celebrity.fame_type
    fill_in "Gender", with: @celebrity.gender
    fill_in "Info", with: @celebrity.info
    fill_in "Name", with: @celebrity.name
    fill_in "Picture", with: @celebrity.picture
    click_on "Create Celebrity"

    assert_text "Celebrity was successfully created"
    click_on "Back"
  end

  test "updating a Celebrity" do
    visit celebrities_url
    click_on "Edit", match: :first

    fill_in "Birth year", with: @celebrity.birth_year
    fill_in "Fame type", with: @celebrity.fame_type
    fill_in "Gender", with: @celebrity.gender
    fill_in "Info", with: @celebrity.info
    fill_in "Name", with: @celebrity.name
    fill_in "Picture", with: @celebrity.picture
    click_on "Update Celebrity"

    assert_text "Celebrity was successfully updated"
    click_on "Back"
  end

  test "destroying a Celebrity" do
    visit celebrities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Celebrity was successfully destroyed"
  end
end
