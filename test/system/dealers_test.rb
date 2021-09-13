require "application_system_test_case"

class DealersTest < ApplicationSystemTestCase
  setup do
    @dealer = dealers(:one)
  end

  test "visiting the index" do
    visit dealers_url
    assert_selector "h1", text: "Dealers"
  end

  test "creating a Dealer" do
    visit dealers_url
    click_on "New Dealer"

    fill_in "", with: @dealer.
    fill_in "Billing address", with: @dealer.billing_address
    fill_in "Company name", with: @dealer.company_name
    fill_in "Display name", with: @dealer.display_name
    fill_in "Email", with: @dealer.email
    fill_in "First name", with: @dealer.first_name
    fill_in "Phone", with: @dealer.phone
    fill_in "Shipping address", with: @dealer.shipping_address
    fill_in "Title", with: @dealer.title
    fill_in "Website", with: @dealer.website
    fill_in "Work phone", with: @dealer.work_phone
    click_on "Create Dealer"

    assert_text "Dealer was successfully created"
    click_on "Back"
  end

  test "updating a Dealer" do
    visit dealers_url
    click_on "Edit", match: :first

    fill_in "", with: @dealer.
    fill_in "Billing address", with: @dealer.billing_address
    fill_in "Company name", with: @dealer.company_name
    fill_in "Display name", with: @dealer.display_name
    fill_in "Email", with: @dealer.email
    fill_in "First name", with: @dealer.first_name
    fill_in "Phone", with: @dealer.phone
    fill_in "Shipping address", with: @dealer.shipping_address
    fill_in "Title", with: @dealer.title
    fill_in "Website", with: @dealer.website
    fill_in "Work phone", with: @dealer.work_phone
    click_on "Update Dealer"

    assert_text "Dealer was successfully updated"
    click_on "Back"
  end

  test "destroying a Dealer" do
    visit dealers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dealer was successfully destroyed"
  end
end
