require 'test_helper'

class PhotoSkatersControllerTest < ActionController::TestCase
  setup do
    @photo_skater = photo_skaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_skaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_skater" do
    assert_difference('PhotoSkater.count') do
      post :create, photo_skater: { photo: @photo_skater.photo, skater_id: @photo_skater.skater_id }
    end

    assert_redirected_to photo_skater_path(assigns(:photo_skater))
  end

  test "should show photo_skater" do
    get :show, id: @photo_skater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_skater
    assert_response :success
  end

  test "should update photo_skater" do
    patch :update, id: @photo_skater, photo_skater: { photo: @photo_skater.photo, skater_id: @photo_skater.skater_id }
    assert_redirected_to photo_skater_path(assigns(:photo_skater))
  end

  test "should destroy photo_skater" do
    assert_difference('PhotoSkater.count', -1) do
      delete :destroy, id: @photo_skater
    end

    assert_redirected_to photo_skaters_path
  end
end
