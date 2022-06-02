json.extract! inventory, :id, :Id_prod, :code, :brand, :category, :description, :cost_price, :sale_price, :stock, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
