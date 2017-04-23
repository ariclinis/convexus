require 'test_helper'

class ProdServisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prod_servi = prod_servis(:one)
  end

  test "should get index" do
    get prod_servis_url
    assert_response :success
  end

  test "should get new" do
    get new_prod_servi_url
    assert_response :success
  end

  test "should create prod_servi" do
    assert_difference('ProdServi.count') do
      post prod_servis_url, params: { prod_servi: { codigo: @prod_servi.codigo, descricao: @prod_servi.descricao, id_estado: @prod_servi.id_estado, id_imposto: @prod_servi.id_imposto, id_utilizador: @prod_servi.id_utilizador, valor_unitario: @prod_servi.valor_unitario } }
    end

    assert_redirected_to prod_servi_url(ProdServi.last)
  end

  test "should show prod_servi" do
    get prod_servi_url(@prod_servi)
    assert_response :success
  end

  test "should get edit" do
    get edit_prod_servi_url(@prod_servi)
    assert_response :success
  end

  test "should update prod_servi" do
    patch prod_servi_url(@prod_servi), params: { prod_servi: { codigo: @prod_servi.codigo, descricao: @prod_servi.descricao, id_estado: @prod_servi.id_estado, id_imposto: @prod_servi.id_imposto, id_utilizador: @prod_servi.id_utilizador, valor_unitario: @prod_servi.valor_unitario } }
    assert_redirected_to prod_servi_url(@prod_servi)
  end

  test "should destroy prod_servi" do
    assert_difference('ProdServi.count', -1) do
      delete prod_servi_url(@prod_servi)
    end

    assert_redirected_to prod_servis_url
  end
end
