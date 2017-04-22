json.extract! utilizador, :id, :nome, :nome_login, :email, :senha, :nivel_acesso, :estado, :created_at, :updated_at
json.url utilizador_url(utilizador, format: :json)
