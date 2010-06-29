require 'test_helper'

class TimingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timing" do
    assert_difference('Timing.count') do
      post :create, :timing => { }
    end

    assert_redirected_to timing_path(assigns(:timing))
  end

  test "should show timing" do
    get :show, :id => timings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => timings(:one).to_param
    assert_response :success
  end

  test "should update timing" do
    put :update, :id => timings(:one).to_param, :timing => { }
    assert_redirected_to timing_path(assigns(:timing))
  end

  test "should destroy timing" do
    assert_difference('Timing.count', -1) do
      delete :destroy, :id => timings(:one).to_param
    end

    assert_redirected_to timings_path
  end
end
