# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create(name: 'spider', description: 'hanging', watering: 'a lot', light: 'bright', price: 100)
User.create(username: 'user', password: '123')
UserPlant.create(plant_id: 1, user_id: 1)
Cart.create(plant_id: 1, user_id: 1, quantity: 3)