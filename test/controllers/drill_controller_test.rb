require 'test_helper'

class DrillControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drill_index_url
    assert_response :success
  end

end
