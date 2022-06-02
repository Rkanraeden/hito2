json.extract! sale, :id, :date, :type_doc, :num_doc, :vendor, :name_client, :address, :commune, :region, :category, :prod_id, :prod_desc, :units, :cost_price, :sale_price, :net_price, :tax, :total, :created_at, :updated_at
json.url sale_url(sale, format: :json)
