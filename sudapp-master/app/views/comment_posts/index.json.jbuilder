json.array!(@comment_posts) do |comment_post|
  json.extract! comment_post, :id, :content, :post_id, :user_id
  json.url comment_post_url(comment_post, format: :json)
end
