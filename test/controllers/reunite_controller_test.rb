require 'test_helper'

class ReuniteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reunite_index_url
    assert_response :success
  end

end
