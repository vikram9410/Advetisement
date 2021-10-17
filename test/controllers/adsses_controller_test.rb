require "test_helper"

class AdssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adss = adsses(:one)
  end

  test "should get index" do
    get adsses_url
    assert_response :success
  end

  test "should get new" do
    get new_adss_url
    assert_response :success
  end

  test "should create adss" do
    assert_difference('Adss.count') do
      post adsses_url, params: { adss: { advertisement: @adss.advertisement, company_name: @adss.company_name, description: @adss.description, location: @adss.location, phone_no: @adss.phone_no } }
    end

    assert_redirected_to adss_url(Adss.last)
  end

  test "should show adss" do
    get adss_url(@adss)
    assert_response :success
  end

  test "should get edit" do
    get edit_adss_url(@adss)
    assert_response :success
  end

  test "should update adss" do
    patch adss_url(@adss), params: { adss: { advertisement: @adss.advertisement, company_name: @adss.company_name, description: @adss.description, location: @adss.location, phone_no: @adss.phone_no } }
    assert_redirected_to adss_url(@adss)
  end

  test "should destroy adss" do
    assert_difference('Adss.count', -1) do
      delete adss_url(@adss)
    end

    assert_redirected_to adsses_url
  end
end
