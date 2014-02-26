require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get recurso" do
    get :recurso
    assert_response :success
  end

  test "should get preco" do
    get :preco
    assert_response :success
  end

  test "should get contato" do
    get :contato
    assert_response :success
  end

end
