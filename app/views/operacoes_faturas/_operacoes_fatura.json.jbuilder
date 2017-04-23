json.extract! operacoes_fatura, :id, :codigo, :descricao, :id_estado, :id_utilizador, :created_at, :updated_at
json.url operacoes_fatura_url(operacoes_fatura, format: :json)
