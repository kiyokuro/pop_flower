require 'test_helper'

class FlowersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get flowers_new_url
    assert_response :success
  end

end
