json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :title, :description, :quantity
  json.url inventory_url(inventory, format: :json)
end
