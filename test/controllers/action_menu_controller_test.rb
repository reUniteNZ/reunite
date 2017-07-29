require 'test_helper'

class ActionMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get action_menu_index_url
    assert_response :success
  end

end
