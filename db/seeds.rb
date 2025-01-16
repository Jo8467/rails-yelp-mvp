# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Big Mamma", address: "La Felicita", category: "italian")
puts "Created Big Mamma"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Maythai", address: "Republique", category: "chinese")
puts "Created Big Mamma"
Restaurant.create!(name: "Petit Nuage", address: "Voltaire", category: "french")
puts "Created Pizza East"
Restaurant.create!(name: "Sushi", address: "Rue St Anne", category: "japanese")
puts "Created Big Mamma"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
