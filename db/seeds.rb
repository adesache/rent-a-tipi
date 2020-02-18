# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'reset database'
Booking.destroy_all
Tent.destroy_all
User.destroy_all

bob = User.new(email: 'bob.sponge@gmail.com', password: '123456', first_name: 'Bob', last_name: 'Sponge')
bob.save!
mickael = User.new(email: 'mickael.jackson@gmail.com', password: '567890', first_name: 'Mickael', last_name: 'Jackson')
mickael.save!


romantic = Tent.new(title: 'Romantic', capacity: 2, comfort_level: 5, description: 'Romantic mood', location: 'Ardèche', price: 90, user: bob)
romantic.save!
bohemian = Tent.new(title: 'Bohemian', capacity: 10, comfort_level: 3, description: 'After-party', location: 'Les Saintes Maries de la Mer', price: 40, user: bob)
bohemian.save!
rough = Tent.new(title: 'Rough', capacity: 5, comfort_level: 2, description: 'Males only', location: 'Pyrenées', price: 20, user: mickael)
rough.save!
luxury = Tent.new(title: 'Luxury', capacity: 2, comfort_level: 5, description: 'Amazing', location: 'Saint Raphael', price: 100, user: mickael)
luxury.save!




