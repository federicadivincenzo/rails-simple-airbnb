# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing database 🧹'
Flat.delete_all
puts 'Database cleaned ✨'

4.times do
  flat = Flat.create!(
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(75..350),
    number_of_guests: rand(1..5)
  )
  puts "Flat #{flat.id} created ✅ "
end
