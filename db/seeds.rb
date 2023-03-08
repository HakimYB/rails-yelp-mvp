# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0521540548", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0521547458", category: "japanese"}
burger = {name: "Burger", address: "12 Somewhere St, Dubai", phone_number: "0521547365", category: "italian"}
pasta = {name: "Pasta", address: "97 Hello St, New York", phone_number: "0521544581", category: "french"}
nobu = {name: "Nobu", address: "7 Boundary St, France", phone_number: "0521544125", category: "belgian"}

[dishoom, pizza_east, burger, pasta, nobu].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
