require 'test_helper'

class CommentPhotosControllerTest < ActionController::TestCase
  setup do
    @comment_photo = comment_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment_photo" do
    assert_difference('CommentPhoto.count') do
      post :create, comment_photo: { content: @comment_photo.content, photo_id: @comment_photo.photo_id, user_id: @comment_photo.user_id }
    end

    assert_redirected_to comment_photo_path(assigns(:comment_photo))
  end

  test "should show comment_photo" do
    get :show, id: @comment_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment_photo
    assert_response :success
  end

  test "should update comment_photo" do
    patch :update, id: @comment_photo, comment_photo: { content: @comment_photo.content, photo_id: @comment_photo.photo_id, user_id: @comment_photo.user_id }
    assert_redirected_to comment_photo_path(assigns(:comment_photo))
  end

  test "should destroy comment_photo" do
    assert_difference('CommentPhoto.count', -1) do
      delete :destroy, id: @comment_photo
    end

    assert_redirected_to comment_photos_path
  end
end
