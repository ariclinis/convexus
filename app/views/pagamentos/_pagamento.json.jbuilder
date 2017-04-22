json.extract! pagamento, :id, :codigo, :formaPagamento, :banco_id, :conta_bancaria_id, :numeroTalao, :dataPagamento, :valorTalao, :valorUtilizado, :created_at, :updated_at
json.url pagamento_url(pagamento, format: :json)
