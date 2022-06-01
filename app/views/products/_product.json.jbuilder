json.extract! product, :id, :Id_prod, :code, :brand, :category, :description, :cost_price, :stock, :sale_price, :created_at, :updated_at
json.url product_url(product, format: :json)
