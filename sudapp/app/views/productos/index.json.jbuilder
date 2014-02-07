json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre_producto, :descripcion_producto, :foto_producto, :tipo_producto_id, :precio
  json.url producto_url(producto, format: :json)
end
