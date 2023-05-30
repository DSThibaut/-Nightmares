# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
House.destroy_all
# Examples:
#   Character.create(name: "Luke", movie: movies.first)
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
@death_house = House.create!(name: "Death house", address: "12 rue de la muerte", description: "La maison de la mort par excellence!", user_id: 1, superficy: "248 m2", photos_url: "#", price: 124, rating: 4.5)
@murder_house = House.create!(name: "Murder house", address: "15 rue de la muerte", description: "Parfaite pour commettre un meurtre!", user_id: 1, superficy: "89 m2", photos_url: "#", price: 157, rating: 4.3)
@blood_house = House.create!(name: "Blood house", address: "56 rue de la muerte", description: "Idéale pour se ressourcer dans un bain de sang!", user_id: 1, superficy: "765 m2", photos_url: "#", price: 873, rating: 2.4)
