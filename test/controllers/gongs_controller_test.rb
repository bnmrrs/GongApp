require 'test_helper'

class GongsControllerTest < ActionController::TestCase
  setup do
    @gong = gongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gong" do
    assert_difference('Gong.count') do
      post :create, gong: { threshhold: @gong.threshhold }
    end

    assert_redirected_to gong_path(assigns(:gong))
  end

  test "should show gong" do
    get :show, id: @gong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gong
    assert_response :success
  end

  test "should update gong" do
    patch :update, id: @gong, gong: { name: @gong.name, threshhold: @gong.threshhold }
    assert_redirected_to gong_path(assigns(:gong))
  end

  test "should destroy gong" do
    assert_difference('Gong.count', -1) do
      delete :destroy, id: @gong
    end

    assert_redirected_to gongs_path
  end
end
