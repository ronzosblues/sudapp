require 'test_helper'

class VideoSkatersControllerTest < ActionController::TestCase
  setup do
    @video_skater = video_skaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_skaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_skater" do
    assert_difference('VideoSkater.count') do
      post :create, video_skater: { skater_id: @video_skater.skater_id, video_skater_title: @video_skater.video_skater_title, video_skater_url: @video_skater.video_skater_url }
    end

    assert_redirected_to video_skater_path(assigns(:video_skater))
  end

  test "should show video_skater" do
    get :show, id: @video_skater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_skater
    assert_response :success
  end

  test "should update video_skater" do
    patch :update, id: @video_skater, video_skater: { skater_id: @video_skater.skater_id, video_skater_title: @video_skater.video_skater_title, video_skater_url: @video_skater.video_skater_url }
    assert_redirected_to video_skater_path(assigns(:video_skater))
  end

  test "should destroy video_skater" do
    assert_difference('VideoSkater.count', -1) do
      delete :destroy, id: @video_skater
    end

    assert_redirected_to video_skaters_path
  end
end
