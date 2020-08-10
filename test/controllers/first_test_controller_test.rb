require 'test_helper'

class FirstTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get first_test_index_url
    assert_response :success
  end

end
