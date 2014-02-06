json.array!(@posts) do |post|
  json.extract! post, :id, :post_title, :post_body, :post_photo, :post_autor
  json.url post_url(post, format: :json)
end
