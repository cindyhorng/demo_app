require 'test_helper'

class WhiteElephantsControllerTest < ActionController::TestCase
  setup do
    @white_elephant = white_elephants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:white_elephants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create white_elephant" do
    assert_difference('WhiteElephant.count') do
      post :create, white_elephant: { countries_visited: @white_elephant.countries_visited, country: @white_elephant.country, integer: @white_elephant.integer, name: @white_elephant.name, string: @white_elephant.string, string: @white_elephant.string }
    end

    assert_redirected_to white_elephant_path(assigns(:white_elephant))
  end

  test "should show white_elephant" do
    get :show, id: @white_elephant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @white_elephant
    assert_response :success
  end

  test "should update white_elephant" do
    patch :update, id: @white_elephant, white_elephant: { countries_visited: @white_elephant.countries_visited, country: @white_elephant.country, integer: @white_elephant.integer, name: @white_elephant.name, string: @white_elephant.string, string: @white_elephant.string }
    assert_redirected_to white_elephant_path(assigns(:white_elephant))
  end

  test "should destroy white_elephant" do
    assert_difference('WhiteElephant.count', -1) do
      delete :destroy, id: @white_elephant
    end

    assert_redirected_to white_elephants_path
  end
end
