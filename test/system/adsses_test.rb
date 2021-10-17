require "application_system_test_case"

class AdssesTest < ApplicationSystemTestCase
  setup do
    @adss = adsses(:one)
  end

  test "visiting the index" do
    visit adsses_url
    assert_selector "h1", text: "Adsses"
  end

  test "creating a Adss" do
    visit adsses_url
    click_on "New Adss"

    fill_in "Advertisement", with: @adss.advertisement
    fill_in "Company name", with: @adss.company_name
    fill_in "Description", with: @adss.description
    fill_in "Location", with: @adss.location
    fill_in "Phone no", with: @adss.phone_no
    click_on "Create Adss"

    assert_text "Adss was successfully created"
    click_on "Back"
  end

  test "updating a Adss" do
    visit adsses_url
    click_on "Edit", match: :first

    fill_in "Advertisement", with: @adss.advertisement
    fill_in "Company name", with: @adss.company_name
    fill_in "Description", with: @adss.description
    fill_in "Location", with: @adss.location
    fill_in "Phone no", with: @adss.phone_no
    click_on "Update Adss"

    assert_text "Adss was successfully updated"
    click_on "Back"
  end

  test "destroying a Adss" do
    visit adsses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adss was successfully destroyed"
  end
end
