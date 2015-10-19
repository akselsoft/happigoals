require 'test_helper'

class GoaltemplatesControllerTest < ActionController::TestCase
  setup do
    @goaltemplate = goaltemplates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goaltemplates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goaltemplate" do
    assert_difference('Goaltemplate.count') do
      post :create, goaltemplate: { area: @goaltemplate.area, goal: @goaltemplate.goal }
    end

    assert_redirected_to goaltemplate_path(assigns(:goaltemplate))
  end

  test "should show goaltemplate" do
    get :show, id: @goaltemplate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goaltemplate
    assert_response :success
  end

  test "should update goaltemplate" do
    patch :update, id: @goaltemplate, goaltemplate: { area: @goaltemplate.area, goal: @goaltemplate.goal }
    assert_redirected_to goaltemplate_path(assigns(:goaltemplate))
  end

  test "should destroy goaltemplate" do
    assert_difference('Goaltemplate.count', -1) do
      delete :destroy, id: @goaltemplate
    end

    assert_redirected_to goaltemplates_path
  end
end
