json.extract! bean, :id, :supplier_id, :bean_type, :product_name, :price, :description, :quantity, :created_at, :updated_at
json.url bean_url(bean, format: :json)
