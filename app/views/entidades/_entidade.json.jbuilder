json.extract! entidade, :id, :nome, :bi, :provincia_id, :municipio_id, :bairro_id, :pai, :mae, :nif, :tipoEntidade, :nacionalidade, :profissao, :genero, :estadoCivil, :telefone, :email, :homePage, :estado, :created_at, :updated_at
json.url entidade_url(entidade, format: :json)
