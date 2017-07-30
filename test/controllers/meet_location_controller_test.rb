require 'test_helper'

class MeetLocationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get meet_location_create_url
    assert_response :success
  end

end
