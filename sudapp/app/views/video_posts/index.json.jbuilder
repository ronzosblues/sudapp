json.array!(@video_posts) do |video_post|
  json.extract! video_post, :id, :video_post_title, :video_post_url, :post_id
  json.url video_post_url(video_post, format: :json)
end
