json.extract! supplier, :id, :rut, :name, :activity, :address, :commune, :region, :contact, :telephone, :email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
