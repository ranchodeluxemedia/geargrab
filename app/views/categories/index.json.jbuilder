json.array!(@categories) do |category|
  json.extract! category, :id, :title, :description, :featured
  json.url category_url(category, format: :json)
end
