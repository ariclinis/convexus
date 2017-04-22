require 'test_helper'

class EntidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entidade = entidades(:one)
  end

  test "should get index" do
    get entidades_url
    assert_response :success
  end

  test "should get new" do
    get new_entidade_url
    assert_response :success
  end

  test "should create entidade" do
    assert_difference('Entidade.count') do
      post entidades_url, params: { entidade: { bairro_id: @entidade.bairro_id, bi: @entidade.bi, email: @entidade.email, estado: @entidade.estado, estadoCivil: @entidade.estadoCivil, genero: @entidade.genero, homePage: @entidade.homePage, mae: @entidade.mae, municipio_id: @entidade.municipio_id, nacionalidade: @entidade.nacionalidade, nif: @entidade.nif, nome: @entidade.nome, pai: @entidade.pai, profissao: @entidade.profissao, provincia_id: @entidade.provincia_id, telefone: @entidade.telefone, tipoEntidade: @entidade.tipoEntidade } }
    end

    assert_redirected_to entidade_url(Entidade.last)
  end

  test "should show entidade" do
    get entidade_url(@entidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_entidade_url(@entidade)
    assert_response :success
  end

  test "should update entidade" do
    patch entidade_url(@entidade), params: { entidade: { bairro_id: @entidade.bairro_id, bi: @entidade.bi, email: @entidade.email, estado: @entidade.estado, estadoCivil: @entidade.estadoCivil, genero: @entidade.genero, homePage: @entidade.homePage, mae: @entidade.mae, municipio_id: @entidade.municipio_id, nacionalidade: @entidade.nacionalidade, nif: @entidade.nif, nome: @entidade.nome, pai: @entidade.pai, profissao: @entidade.profissao, provincia_id: @entidade.provincia_id, telefone: @entidade.telefone, tipoEntidade: @entidade.tipoEntidade } }
    assert_redirected_to entidade_url(@entidade)
  end

  test "should destroy entidade" do
    assert_difference('Entidade.count', -1) do
      delete entidade_url(@entidade)
    end

    assert_redirected_to entidades_url
  end
end
