require 'test_helper'

class OperacoesFaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operacoes_fatura = operacoes_faturas(:one)
  end

  test "should get index" do
    get operacoes_faturas_url
    assert_response :success
  end

  test "should get new" do
    get new_operacoes_fatura_url
    assert_response :success
  end

  test "should create operacoes_fatura" do
    assert_difference('OperacoesFatura.count') do
      post operacoes_faturas_url, params: { operacoes_fatura: { codigo: @operacoes_fatura.codigo, descricao: @operacoes_fatura.descricao, id_estado: @operacoes_fatura.id_estado, id_utilizador: @operacoes_fatura.id_utilizador } }
    end

    assert_redirected_to operacoes_fatura_url(OperacoesFatura.last)
  end

  test "should show operacoes_fatura" do
    get operacoes_fatura_url(@operacoes_fatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_operacoes_fatura_url(@operacoes_fatura)
    assert_response :success
  end

  test "should update operacoes_fatura" do
    patch operacoes_fatura_url(@operacoes_fatura), params: { operacoes_fatura: { codigo: @operacoes_fatura.codigo, descricao: @operacoes_fatura.descricao, id_estado: @operacoes_fatura.id_estado, id_utilizador: @operacoes_fatura.id_utilizador } }
    assert_redirected_to operacoes_fatura_url(@operacoes_fatura)
  end

  test "should destroy operacoes_fatura" do
    assert_difference('OperacoesFatura.count', -1) do
      delete operacoes_fatura_url(@operacoes_fatura)
    end

    assert_redirected_to operacoes_faturas_url
  end
end
