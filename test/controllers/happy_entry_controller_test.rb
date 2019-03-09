require 'test_helper'

class HappyEntryControllerTest < ActionDispatch::IntegrationTest
  test "should get happyentry" do
    get happy_entry_happyentry_url
    assert_response :success
  end

end
