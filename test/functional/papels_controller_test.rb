require 'test_helper'

class PapelsControllerTest < ActionController::TestCase
  setup do
    @papel = papels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:papels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create papel" do
    assert_difference('Papel.count') do
      post :create, papel: { tipo: @papel.tipo }
    end

    assert_redirected_to papel_path(assigns(:papel))
  end

  test "should show papel" do
    get :show, id: @papel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @papel
    assert_response :success
  end

  test "should update papel" do
    put :update, id: @papel, papel: { tipo: @papel.tipo }
    assert_redirected_to papel_path(assigns(:papel))
  end

  test "should destroy papel" do
    assert_difference('Papel.count', -1) do
      delete :destroy, id: @papel
    end

    assert_redirected_to papels_path
  end
end
