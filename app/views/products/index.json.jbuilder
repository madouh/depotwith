json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :picture, :price
  json.url product_url(product, format: :json)
end
