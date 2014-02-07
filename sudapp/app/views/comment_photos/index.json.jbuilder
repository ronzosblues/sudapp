json.array!(@comment_photos) do |comment_photo|
  json.extract! comment_photo, :id, :content, :photo_id, :user_id
  json.url comment_photo_url(comment_photo, format: :json)
end
