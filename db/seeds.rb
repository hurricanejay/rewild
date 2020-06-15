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

Plant.create(name: 'spider', description: 'hanging', watering: 'a lot', light: 'bright', price: 100)
Plant.create(name: 'fern', description: 'big', watering: 'a little', light: 'shade', price: 19)
User.create(username: 'user', password: '123')
UserPlant.create(plant_id: Plant.first.id, user_id: User.first.id)
Cart.create(plant_id: Plant.first.id, user_id: User.first.id, quantity: 3)
Watering.create(cart_id: Cart.first.id, date: Time.now, amount: 2, frequency: 5)