require "test_helper"

class LiveEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get live_events_url
    assert_response :success
  end

  test "should get show" do
    get live_event_url(LiveEvent.first)
    assert_response :success
  end

  test "should get new" do
    get new_live_event_url
    assert_response :success
  end

  test "should get edit" do
    get edit_live_event_url(LiveEvent.first)
    assert_response :success
  end
end
