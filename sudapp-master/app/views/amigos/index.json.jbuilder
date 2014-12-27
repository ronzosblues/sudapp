json.array!(@amigos) do |amigo|
  json.extract! amigo, :id, :name, :web
  json.url amigo_url(amigo, format: :json)
end
