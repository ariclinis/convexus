require 'test_helper'

class TipoDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_doc = tipo_docs(:one)
  end

  test "should get index" do
    get tipo_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_doc_url
    assert_response :success
  end

  test "should create tipo_doc" do
    assert_difference('TipoDoc.count') do
      post tipo_docs_url, params: { tipo_doc: { codigo: @tipo_doc.codigo, descricao: @tipo_doc.descricao, id_estado: @tipo_doc.id_estado, id_operacoes_fatura: @tipo_doc.id_operacoes_fatura, id_utilizador: @tipo_doc.id_utilizador } }
    end

    assert_redirected_to tipo_doc_url(TipoDoc.last)
  end

  test "should show tipo_doc" do
    get tipo_doc_url(@tipo_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_doc_url(@tipo_doc)
    assert_response :success
  end

  test "should update tipo_doc" do
    patch tipo_doc_url(@tipo_doc), params: { tipo_doc: { codigo: @tipo_doc.codigo, descricao: @tipo_doc.descricao, id_estado: @tipo_doc.id_estado, id_operacoes_fatura: @tipo_doc.id_operacoes_fatura, id_utilizador: @tipo_doc.id_utilizador } }
    assert_redirected_to tipo_doc_url(@tipo_doc)
  end

  test "should destroy tipo_doc" do
    assert_difference('TipoDoc.count', -1) do
      delete tipo_doc_url(@tipo_doc)
    end

    assert_redirected_to tipo_docs_url
  end
end
