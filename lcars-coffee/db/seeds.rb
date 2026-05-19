# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Bean.destroy_all
Supplier.destroy_all

puts "Cleared existing beans and suppliers..."

# -----------------------
# Suppliers
# -----------------------

supplier1 = Supplier.create!(
  name: "Blue Mountain Imports",
  address: "123 Coffee St",
  city: "Kingston",
  state: "JM",
  email: "blue@mountain.com",
  phone: "555-123-4567"
)

supplier2 = Supplier.create!(
  name: "Colombian Bean Co",
  address: "45 Andes Ave",
  city: "Bogotá",
  state: "BO",
  email: "contact@colombianbeans.com",
  phone: "555-987-6543"
)

supplier3 = Supplier.create!(
  name: "Ethiopian Roast Traders",
  address: "88 Addis Lane",
  city: "Addis Ababa",
  state: "ET",
  email: "ethiopia@roast.com",
  phone: "555-222-3333"
)

# -----------------------
# Beans
# -----------------------

Bean.create!(
  product_name: "Blue Mountain Classic",
  bean_type: "Arabica",
  description: "Smooth, mild Jamaican coffee with chocolate notes.",
  price: 19.99,
  quantity: 100,
  supplier_id: supplier1.id
)

Bean.create!(
  product_name: "Andes Dark Roast",
  bean_type: "Robusta",
  description: "Bold Colombian roast with strong body.",
  price: 14.50,
  quantity: 200,
  supplier_id: supplier2.id
)

Bean.create!(
  product_name: "Ethiopian Sunrise",
  bean_type: "Arabica",
  description: "Floral and fruity light roast.",
  price: 16.75,
  quantity: 150,
  supplier_id: supplier3.id
)

puts "Seeding complete!"