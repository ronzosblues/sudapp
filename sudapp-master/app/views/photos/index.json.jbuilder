json.array!(@photos) do |photo|
  json.extract! photo, :id, :album_id, :photo_title, :photo
  json.url photo_url(photo, format: :json)
end
