require 'test_helper'

class SkatersControllerTest < ActionController::TestCase
  setup do
    @skater = skaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skater" do
    assert_difference('Skater.count') do
      post :create, skater: { skater_body: @skater.skater_body, skater_name: @skater.skater_name, skater_photo: @skater.skater_photo }
    end

    assert_redirected_to skater_path(assigns(:skater))
  end

  test "should show skater" do
    get :show, id: @skater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skater
    assert_response :success
  end

  test "should update skater" do
    patch :update, id: @skater, skater: { skater_body: @skater.skater_body, skater_name: @skater.skater_name, skater_photo: @skater.skater_photo }
    assert_redirected_to skater_path(assigns(:skater))
  end

  test "should destroy skater" do
    assert_difference('Skater.count', -1) do
      delete :destroy, id: @skater
    end

    assert_redirected_to skaters_path
  end
end
