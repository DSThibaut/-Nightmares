# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Booking.destroy_all
House.destroy_all
# Examples:
#   Character.create(name: "Luke", movie: movies.first)
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
@death_house = House.create!(name: "Death house", address: "12 rue de la muerte", description: "La maison de la mort par excellence!", user_id: 1, superficy: "248 m2", photos_url: "app/assets/images/villa-3237114_1920.jpg", price: 124, rating: 4.5)
@murder_house = House.create!(name: "Murder house", address: "15 rue de la muerte", description: "Parfaite pour commettre un meurtre!", user_id: 2, superficy: "89 m2", photos_url: "app/assets/images/manoir-hante-2023.jpg", price: 157, rating: 4.3)
@blood_house = House.create!(name: "Blood house", address: "56 rue de la muerte", description: "Idéale pour se ressourcer dans un bain de sang!", user_id: 2, superficy: "765 m2", photos_url: "app/assets/images/maison-des-horreurs.jpeg", price: 873, rating: 2.4)
@sheitan_house = House.create!(name: "Sheitan house", address: "467 rue de la muerte", description: "Idéale pour se ressourcer dans un bain de sang!", user_id: 1, superficy: "78 m2", photos_url: "app/assets/images/860_maison-hantee.jpg", price: 328, rating: 2.2)
@knife_house = House.create!(name: "Knife's house", address: "8955 rue de la muerte", description: "Pour les amoureux des couteaux!", user_id: 3, superficy: "642 m2", photos_url: "app/assets/images/dracula chateau 3947.jpeg", price: 93, rating: 4.9)
@exorcist_house = House.create!(name: "Exorcist's house", address: "30 rue de la muerte", description: "Attention a vous!", user_id: 1, superficy: "224 m2", photos_url: "app/assets/images/devil-house.jpeg", price: 138, rating: 3.3)
