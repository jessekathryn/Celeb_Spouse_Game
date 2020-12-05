require "application_system_test_case"

class MarriagesTest < ApplicationSystemTestCase
  setup do
    @marriage = marriages(:one)
  end

  test "visiting the index" do
    visit marriages_url
    assert_selector "h1", text: "Marriages"
  end

  test "creating a Marriage" do
    visit marriages_url
    click_on "New Marriage"

    fill_in "End year", with: @marriage.end_year
    fill_in "Husband", with: @marriage.husband
    fill_in "Start year", with: @marriage.start_year
    fill_in "Wife", with: @marriage.wife
    click_on "Create Marriage"

    assert_text "Marriage was successfully created"
    click_on "Back"
  end

  test "updating a Marriage" do
    visit marriages_url
    click_on "Edit", match: :first

    fill_in "End year", with: @marriage.end_year
    fill_in "Husband", with: @marriage.husband
    fill_in "Start year", with: @marriage.start_year
    fill_in "Wife", with: @marriage.wife
    click_on "Update Marriage"

    assert_text "Marriage was successfully updated"
    click_on "Back"
  end

  test "destroying a Marriage" do
    visit marriages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marriage was successfully destroyed"
  end
end
