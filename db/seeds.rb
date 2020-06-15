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
Plant.create(name: 'peace lily', description: 'air purifying', amount: 2, frequency: 1,light: 'shade', price: 39, image: "https://i1.wp.com/comfyhomecorner.com/wp-content/uploads/2018/03/Peace-Lily.png?resize=396%2C396&ssl=1")
Plant.create(name: 'monstera deliciosa', description: 'big and hole-y', amount: 3, frequency: 2,light: 'partial shade', price: 40, image: "https://bombonprojects.com/wp-content/uploads/2018/03/planta-1.png")


User.create(username: 'user', password: '123')
User.create(username: 'user2', password: '123')
User.create(username: 'user3', password: '123')



UserPlant.create(plant_id: Plant.last.id, user_id: User.first.id)
UserPlant.create(plant_id: Plant.first.id, user_id: User.first.id)
UserPlant.create(plant_id: Plant.second.id, user_id: User.first.id)
UserPlant.create(plant_id: Plant.third.id, user_id: User.first.id)

UserPlant.create(plant_id: Plant.first.id, user_id: User.second.id)
UserPlant.create(plant_id: Plant.last.id, user_id: User.second.id)

UserPlant.create(plant_id: Plant.last.id, user_id: User.last.id)


Cart.create(plant_id: Plant.first.id, user_id: User.first.id, quantity: 3)
Cart.create(plant_id: Plant.second.id, user_id: User.first.id, quantity: 1)
Cart.create(plant_id: Plant.last.id, user_id: User.first.id, quantity: 1)

Cart.create(plant_id: Plant.first.id, user_id: User.last.id, quantity: 3)

Watering.create(user_plant_id: UserPlant.second.id, date: Time.now, amount: 3)
Watering.create(user_plant_id: UserPlant.first.id, date: Time.now, amount: 1)
Watering.create(user_plant_id: UserPlant.last.id, date: Time.now, amount: 3)