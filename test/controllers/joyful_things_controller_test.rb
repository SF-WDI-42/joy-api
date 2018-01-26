require 'test_helper'

class JoyfulThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @joyful_thing = joyful_things(:one)
  end

  test "should get index" do
    get joyful_things_url, as: :json
    assert_response :success
  end

  test "should create joyful_thing" do
    assert_difference('JoyfulThing.count') do
      post joyful_things_url, params: { joyful_thing: { name: @joyful_thing.name } }, as: :json
    end

    assert_response 201
  end

  test "should show joyful_thing" do
    get joyful_thing_url(@joyful_thing), as: :json
    assert_response :success
  end

  test "should update joyful_thing" do
    patch joyful_thing_url(@joyful_thing), params: { joyful_thing: { name: @joyful_thing.name } }, as: :json
    assert_response 200
  end

  test "should destroy joyful_thing" do
    assert_difference('JoyfulThing.count', -1) do
      delete joyful_thing_url(@joyful_thing), as: :json
    end

    assert_response 204
  end
end
