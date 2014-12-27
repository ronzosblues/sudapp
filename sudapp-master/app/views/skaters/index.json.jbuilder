json.array!(@skaters) do |skater|
  json.extract! skater, :id, :skater_name, :skater_body, :skater_photo
  json.url skater_url(skater, format: :json)
end
