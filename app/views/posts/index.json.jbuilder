json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :category_id, :title, :description, :price, :location, :featured_post
  json.url post_url(post, format: :json)
end
