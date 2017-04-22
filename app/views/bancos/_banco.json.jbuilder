json.extract! banco, :id, :CodBanco, :descricao, :estado, :utilizador, :created_at, :updated_at
json.url banco_url(banco, format: :json)
