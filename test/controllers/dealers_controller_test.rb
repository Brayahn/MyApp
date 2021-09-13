require "test_helper"

class DealersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dealer = dealers(:one)
  end

  test "should get index" do
    get dealers_url
    assert_response :success
  end

  test "should get new" do
    get new_dealer_url
    assert_response :success
  end

  test "should create dealer" do
    assert_difference('Dealer.count') do
      post dealers_url, params: { dealer: { : @dealer., billing_address: @dealer.billing_address, company_name: @dealer.company_name, display_name: @dealer.display_name, email: @dealer.email, first_name: @dealer.first_name, phone: @dealer.phone, shipping_address: @dealer.shipping_address, title: @dealer.title, website: @dealer.website, work_phone: @dealer.work_phone } }
    end

    assert_redirected_to dealer_url(Dealer.last)
  end

  test "should show dealer" do
    get dealer_url(@dealer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dealer_url(@dealer)
    assert_response :success
  end

  test "should update dealer" do
    patch dealer_url(@dealer), params: { dealer: { : @dealer., billing_address: @dealer.billing_address, company_name: @dealer.company_name, display_name: @dealer.display_name, email: @dealer.email, first_name: @dealer.first_name, phone: @dealer.phone, shipping_address: @dealer.shipping_address, title: @dealer.title, website: @dealer.website, work_phone: @dealer.work_phone } }
    assert_redirected_to dealer_url(@dealer)
  end

  test "should destroy dealer" do
    assert_difference('Dealer.count', -1) do
      delete dealer_url(@dealer)
    end

    assert_redirected_to dealers_url
  end
end
