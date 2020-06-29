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

p1 = Plant.create(name: 'spider', description: 'hanging', amount: 2, frequency: 5, light: 'bright', price: 100, image: "https://www.clipartmax.com/png/middle/91-911344_round-potted-plant-import-spider-plant-transparent-background.png")
p2 = Plant.create(name: 'fern', description: 'big', amount: 2, frequency: 2,light: 'shade', price: 19, image: "https://i.pinimg.com/originals/44/d8/58/44d8586ae81122a171706867dd27ebe5.png")
p3 = Plant.create(name: 'peace lily', description: 'air purifying', amount: 2, frequency: 1,light: 'shade', price: 39, image: "https://i1.wp.com/comfyhomecorner.com/wp-content/uploads/2018/03/Peace-Lily.png?resize=396%2C396&ssl=1")
p4 = Plant.create(name: 'monstera deliciosa', description: 'big and hole-y', amount: 3, frequency: 2,light: 'partial shade', price: 40, image: "https://bombonprojects.com/wp-content/uploads/2018/03/planta-1.png")
p5 = Plant.create(name: 'parlor palm', description: 'jungle-y', amount: 3, frequency: 1,light: 'partial shade', price: 50, image: "https://bloomscape.com/wp-content/uploads/2019/05/bloomscape_product-ponytail-palm-stone-3-1140x1382.jpg?ver=28713")
p6 = Plant.create(name: 'snake plant', description: 'tall and low maintence', amount: 1, frequency: 1,light: 'shade', price: 20, image: "https://bloomscape.com/wp-content/uploads/2019/05/bloomscape_product-ponytail-palm-stone-3-1140x1382.jpg?ver=28713")
p7 = Plant.create(name: 'bird nest fern', description: 'fern', amount: 1, frequency: 1,light: 'partial shade', price: 30, image: "https://bloomscape.com/wp-content/uploads/2019/05/bloomscape_product-ponytail-palm-stone-3-1140x1382.jpg?ver=28713")


u1 = User.create(username: 'user', password: '123', email: 'test@me.com')
u2 = User.create(username: 'user2', password: '123', email: 'test2@me.com' )
u3 = User.create(username: 'user3', password: '123', email: 'yaho@me.com')
u4 = User.create(username: 'user4', password: '123', email: 'hello@me.com')


up1 = UserPlant.create(plant_id: p1.id, user_id: User.first.id)
up2 = UserPlant.create(plant_id: p2.id, user_id: User.first.id)
up3 = UserPlant.create(plant_id: p3.id, user_id: User.first.id)
up4 = UserPlant.create(plant_id: p6.id, user_id: User.first.id)
up5 = UserPlant.create(plant_id: p7.id, user_id: User.first.id)
up6 = UserPlant.create(plant_id: p5.id, user_id: u4.id)
up7 = UserPlant.create(plant_id: p3.id, user_id: u3.id)
up8 = UserPlant.create(plant_id: p2.id, user_id: u3.id)
up9 = UserPlant.create(plant_id: p3.id, user_id: u4.id)


c1 = Cart.create(plant_id: Plant.first.id, user_id: User.first.id, quantity: 3)
c2 = Cart.create(plant_id: Plant.second.id, user_id: User.first.id, quantity: 1)
c3 = Cart.create(plant_id: Plant.last.id, user_id: User.first.id, quantity: 1)
c4 = Cart.create(plant_id: Plant.first.id, user_id: User.last.id, quantity: 3)
c5 = Cart.create(plant_id: p3.id, user_id:u4.id, quantity: 3)
c6 = Cart.create(plant_id: p7.id, user_id:u3.id, quantity: 1)
c7 = Cart.create(plant_id: p4.id, user_id:u2.id, quantity: 2)

w1 = Watering.create(user_plant_id: UserPlant.second.id, date: Time.now, amount: 3)
w2 = Watering.create(user_plant_id: UserPlant.first.id, date: Time.now, amount: 1)
w3 = Watering.create(user_plant_id: UserPlant.last.id, date: Time.now, amount: 3)
w4 = Watering.create(user_plant_id: u4.id, date: Time.now, amount: 3)
w5 = Watering.create(user_plant_id: u2.id, date: Time.now, amount: 1)
w6 = Watering.create(user_plant_id: u1.id, date: Time.now, amount: 2)