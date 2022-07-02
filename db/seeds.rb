# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

15.times do |i|
    supplier = Supplier.create(rut: "77707240-0", name: "inversiones Mar Azul Ltda.", activity: "Distribución", commune: "quilicura", region: "metropolitana", telephone: "56223802000", email: "prueba@prueba.com")
end

15.times do |i|
    supplier = Supplier.create(rut: "18479242-7", name: "Katherine Maryana Sarmiento Farias", activity: "Promotora Bazar Paqueteria", commune: "peñaflor", region: "metropolitana", telephone: "56223802000", email: "prueba1@prueba.com")
end

15.times do |i|
    product = Product.create(Id_prod: "1", code: "470286", brand: "Surlat", category: "Lacteos", description: "Leche Entera 1 litro", cost_price: "950", stock: "25", sale_price:"1250")
end

15.times do |i|
    product = Product.create(Id_prod: "2", code: "056025", brand: "Soprole", category: "Lacteos", description: "peñaflor", cost_price: "230", stock: "25", sale_price:"500")
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?