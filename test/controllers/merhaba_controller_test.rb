require "test_helper"

class MerhabaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get merhaba_index_url
    assert_response :success
  end
end
