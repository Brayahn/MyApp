json.extract! item, :id, :name, :description, :sku, :unit, :manufucturer, :created_at, :updated_at
json.url item_url(item, format: :json)
