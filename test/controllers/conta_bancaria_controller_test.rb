require 'test_helper'

class ContaBancariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conta_bancarium = conta_bancaria(:one)
  end

  test "should get index" do
    get conta_bancaria_url
    assert_response :success
  end

  test "should get new" do
    get new_conta_bancarium_url
    assert_response :success
  end

  test "should create conta_bancarium" do
    assert_difference('ContaBancarium.count') do
      post conta_bancaria_url, params: { conta_bancarium: { banco_id: @conta_bancarium.banco_id, descricao: @conta_bancarium.descricao, estado: @conta_bancarium.estado, moeda_id: @conta_bancarium.moeda_id, tipoConta: @conta_bancarium.tipoConta, utilizador_id: @conta_bancarium.utilizador_id } }
    end

    assert_redirected_to conta_bancarium_url(ContaBancarium.last)
  end

  test "should show conta_bancarium" do
    get conta_bancarium_url(@conta_bancarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_conta_bancarium_url(@conta_bancarium)
    assert_response :success
  end

  test "should update conta_bancarium" do
    patch conta_bancarium_url(@conta_bancarium), params: { conta_bancarium: { banco_id: @conta_bancarium.banco_id, descricao: @conta_bancarium.descricao, estado: @conta_bancarium.estado, moeda_id: @conta_bancarium.moeda_id, tipoConta: @conta_bancarium.tipoConta, utilizador_id: @conta_bancarium.utilizador_id } }
    assert_redirected_to conta_bancarium_url(@conta_bancarium)
  end

  test "should destroy conta_bancarium" do
    assert_difference('ContaBancarium.count', -1) do
      delete conta_bancarium_url(@conta_bancarium)
    end

    assert_redirected_to conta_bancaria_url
  end
end
