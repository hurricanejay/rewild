# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.destroy_all
UserPlant.destroy_all
Cart.destroy_all
User.destroy_all
Watering.destroy_all

Plant.create(name: 'spider', description: 'hanging', amount: 2, frequency: 5, light: 'bright', price: 100, image: "https://www.clipartmax.com/png/middle/91-911344_round-potted-plant-import-spider-plant-transparent-background.png")
Plant.create(name: 'fern', description: 'big', amount: 2, frequency: 2,light: 'shade', price: 19, image: "https://i.pinimg.com/originals/44/d8/58/44d8586ae81122a171706867dd27ebe5.png")
User.create(username: 'user', password: '123')
UserPlant.create(plant_id: Plant.first.id, user_id: User.first.id)
Cart.create(plant_id: Plant.first.id, user_id: User.first.id, quantity: 3)
Watering.create(user_plant_id: UserPlant.first.id, date: Time.now, amount: 2)