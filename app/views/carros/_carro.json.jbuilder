json.extract! carro, :id, :nome, :modelo, :marca, :created_at, :updated_at
json.url carro_url(carro, format: :json)
