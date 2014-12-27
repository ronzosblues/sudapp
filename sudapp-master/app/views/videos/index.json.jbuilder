json.array!(@videos) do |video|
  json.extract! video, :id, :video_title, :video_url
  json.url video_url(video, format: :json)
end
