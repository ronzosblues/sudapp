json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :user_id, :producto_id, :fecha
  json.url pedido_url(pedido, format: :json)
end
