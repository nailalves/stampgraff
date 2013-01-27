require 'test_helper'

class OsControllerTest < ActionController::TestCase
  setup do
    @o = os(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:os)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create o" do
    assert_difference('Os.count') do
      post :create, o: { cliente_id: @o.cliente_id, criacao: @o.criacao, descricao: @o.descricao, observacao: @o.observacao, produto_id: @o.produto_id, status: @o.status, user_id: @o.user_id, valor: @o.valor }
    end

    assert_redirected_to o_path(assigns(:o))
  end

  test "should show o" do
    get :show, id: @o
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @o
    assert_response :success
  end

  test "should update o" do
    put :update, id: @o, o: { cliente_id: @o.cliente_id, criacao: @o.criacao, descricao: @o.descricao, observacao: @o.observacao, produto_id: @o.produto_id, status: @o.status, user_id: @o.user_id, valor: @o.valor }
    assert_redirected_to o_path(assigns(:o))
  end

  test "should destroy o" do
    assert_difference('Os.count', -1) do
      delete :destroy, id: @o
    end

    assert_redirected_to os_index_path
  end
end
