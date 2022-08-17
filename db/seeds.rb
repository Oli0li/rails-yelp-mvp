# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating restaurants..."
name = ["Noodles King", "Mamma Mia", "Makoto", "Chez Colette", "Au Manneken-Peace"]
address = ["5 rue Jean Jaurès, 33000 Bordeaux", "2 rue Lorme, 33000 Bordeaux", "15 boulevard des pins, 33200 Talence", "6 rue des peupliers, 24000 Bergerac", "120 cours du 14 juillet, 33000 Bordeaux"]
phone_number = ["0560124587", "0505050507", "0102030405", "050403201", "0511223344"]
categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do |i|
  restaurant = Restaurant.create!({name: name[i], address: address[i], phone_number: phone_number[i], category: categories[i]})
  puts "Created #{restaurant.name}"
end
puts "Finished!"
