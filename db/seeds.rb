# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Car.destroy_all
Owner.destroy_all

puts "Creating owners"

owner1 = Owner.create!(nickname: "Vytautas")
owner2 = Owner.create!(nickname: "Elena")
owner3 = Owner.create!(nickname: "James")

puts "Creating cars"

Car.create!(
  brand: "Ferrari",
  model: "250 GTO",
  year: 1962,
  fuel: "Petrol",
  owner: owner1
)

Car.create!(
  brand: "Mercedes-Benz",
  model: "300SL Gullwing",
  year: 1955,
  fuel: "Petrol",
  owner: owner2
)

Car.create!(
  brand: "Rolls-Royce",
  model: "Phantom V",
  year: 1960,
  fuel: "Petrol",
  owner: owner3
)
