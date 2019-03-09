require 'test_helper'

class HappyThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @happy_thing = happy_things(:one)
  end

  test "should get index" do
    get happy_things_url
    assert_response :success
  end

  test "should get new" do
    get new_happy_thing_url
    assert_response :success
  end

  test "should create happy_thing" do
    assert_difference('HappyThing.count') do
      post happy_things_url, params: { happy_thing: { happy_things: @happy_thing.happy_things, user_id: @happy_thing.user_id } }
    end

    assert_redirected_to happy_thing_url(HappyThing.last)
  end

  test "should show happy_thing" do
    get happy_thing_url(@happy_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_happy_thing_url(@happy_thing)
    assert_response :success
  end

  test "should update happy_thing" do
    patch happy_thing_url(@happy_thing), params: { happy_thing: { happy_things: @happy_thing.happy_things, user_id: @happy_thing.user_id } }
    assert_redirected_to happy_thing_url(@happy_thing)
  end

  test "should destroy happy_thing" do
    assert_difference('HappyThing.count', -1) do
      delete happy_thing_url(@happy_thing)
    end

    assert_redirected_to happy_things_url
  end
end
