json.array!(@albums) do |album|
  json.extract! album, :id, :album_title
  json.url album_url(album, format: :json)
end
