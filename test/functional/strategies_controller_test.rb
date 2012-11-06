require 'test_helper'

class StrategiesControllerTest < ActionController::TestCase
  setup do
    @strategy = strategies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strategies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strategy" do
    assert_difference('Strategy.count') do
      post :create, strategy: { title: @strategy.title, vision: @strategy.vision }
    end

    assert_redirected_to strategy_path(assigns(:strategy))
  end

  test "should show strategy" do
    get :show, id: @strategy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strategy
    assert_response :success
  end

  test "should update strategy" do
    put :update, id: @strategy, strategy: { title: @strategy.title, vision: @strategy.vision }
    assert_redirected_to strategy_path(assigns(:strategy))
  end

  test "should destroy strategy" do
    assert_difference('Strategy.count', -1) do
      delete :destroy, id: @strategy
    end

    assert_redirected_to strategies_path
  end
end
