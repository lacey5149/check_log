require 'test_helper'

class MasterControllerTest < ActionDispatch::IntegrationTest
  test "should get new_check" do
    get master_new_check_url
    assert_response :success
  end

  test "should get view_checks" do
    get master_view_checks_url
    assert_response :success
  end

  test "should get custody_accounts" do
    get master_custody_accounts_url
    assert_response :success
  end

  test "should get alerts" do
    get master_alerts_url
    assert_response :success
  end

end
