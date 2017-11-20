require 'test_helper'

class NameControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get name_new_url
    assert_response :success
  end

end
