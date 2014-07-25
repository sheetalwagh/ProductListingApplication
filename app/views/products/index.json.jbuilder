json.array!(@products) do |product|
  json.extract! product, :id, :ProductName, :Price, :Description
  json.url product_url(product, format: :json)
end
