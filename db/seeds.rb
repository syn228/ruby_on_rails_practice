# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
Fridge.destroy_all
User.destroy_all
Kitchen.destroy_all


fridge1 = Fridge.create(name: "Mr. Freezie", size: "medium")
fridge2 = Fridge.create(name: "Ms. Freezie", size: "large")
fridge3 = Fridge.create(name: "Mr. Freezie Jr.", size: "small")

food1 = Food.create(name: "Curry beef with brown", expires_on: Date.new(2018,7,2), fridge:fridge1)
food2 = Food.create(name: "Curry lamb with rice", expires_on: Date.new(2018,8,2), fridge:fridge2)
food3 = Food.create(name: "Roasted beef with brown rice", expires_on: Date.new(2018,6,2), fridge:fridge3)
food4 = Food.create(name: "Broccoli and beef with brown rice", expires_on: Date.new(2018,6,2), fridge:fridge1)
food5 = Food.create(name: "General Tso's chicken with rice", expires_on: Date.new(2018,7,2), fridge:fridge2)
food6 = Food.create(name: "Caesar salad", expires_on: Date.new(2018,7,10), fridge:fridge1)



aaron = User.create(name: "Aaron", hunger: true)
derek = User.create(name: "Derek", hunger: false)
aleks = User.create(name: "Aleks", hunger: true)
louis = User.create(name: "Louis", hunger: true)



aaron.fridges << fridge1

derek.fridges << fridge2
derek.fridges << fridge3

aleks.fridges << fridge3
louis.fridges << Fridge.all
