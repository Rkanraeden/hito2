json.extract! purchase, :id, :rut_supp, :name_supplier, :type_doc, :prod_id, :prod_name, :units, :cost_price, :net_price, :tax, :total, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
