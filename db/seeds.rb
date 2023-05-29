# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   Character.create(name: "Luke", movie: movies.first)
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Death_house = House.create(name: "Death's house", address: "12 rue de la muerte", description: "La maison de la mort par excellence!", user_id: 1, superficy: "248 m2", photos_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.radiofrance.fr%2Ffranceinter%2Fpodcasts%2Fles-savanturiers%2Fles-savanturiers-du-dimanche-20-mars-2022-8033794&psig=AOvVaw2TbJ3JyK2c7vn8_uIoaVrk&ust=1685450704095000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDDj6bHmv8CFQAAAAAdAAAAABAE", price: 124, rating: 4,5)
Murder_house = House.create(name: "Murder house", address: "15 rue de la muerte", description: "Parfaite pour commettre un meurtre!", user_id: 2, superficy: "89 m2", photos_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.radiofrance.fr%2Ffranceinter%2Fpodcasts%2Fles-savanturiers%2Fles-savanturiers-du-dimanche-20-mars-2022-8033794&psig=AOvVaw2TbJ3JyK2c7vn8_uIoaVrk&ust=1685450704095000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDDj6bHmv8CFQAAAAAdAAAAABAE", price: 157, rating: 4,3)
Blood_house = House.create(name: "Blood house", address: "56 rue de la muerte", description: "Idéale pour se ressourcer dans un bain de sang!", user_id: 3, superficy: "765 m2", photos_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.radiofrance.fr%2Ffranceinter%2Fpodcasts%2Fles-savanturiers%2Fles-savanturiers-du-dimanche-20-mars-2022-8033794&psig=AOvVaw2TbJ3JyK2c7vn8_uIoaVrk&ust=1685450704095000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDDj6bHmv8CFQAAAAAdAAAAABAE", price: 873, rating: 2,4)
