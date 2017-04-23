json.extract! tipo_doc, :id, :codigo, :descricao, :id_operacoes_fatura, :id_estado, :id_utilizador, :created_at, :updated_at
json.url tipo_doc_url(tipo_doc, format: :json)
