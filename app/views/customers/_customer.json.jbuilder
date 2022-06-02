json.extract! customer, :id, :rut_client, :first_name, :last_name, :address, :commune, :telphone, :email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
