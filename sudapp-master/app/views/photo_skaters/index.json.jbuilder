json.array!(@photo_skaters) do |photo_skater|
  json.extract! photo_skater, :id, :photo, :skater_id
  json.url photo_skater_url(photo_skater, format: :json)
end
