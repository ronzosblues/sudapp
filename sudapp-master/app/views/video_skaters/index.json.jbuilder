json.array!(@video_skaters) do |video_skater|
  json.extract! video_skater, :id, :video_skater_title, :video_skater_url, :skater_id
  json.url video_skater_url(video_skater, format: :json)
end
