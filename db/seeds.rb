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

#bob = User.new(email: 'bob.sponge@gmail.com', password: '123456', first_name: 'Bob', last_name: 'Sponge')
#bob.save!
#mickael = User.new(email: 'mickael.jackson@gmail.com', password: '567890', first_name: 'Mickael', last_name: 'Jackson')
#mickael.save!


#romantic = Tent.new(title: 'Romantic', capacity: 2, comfort_level: 5, description: 'Romantic mood', location: 'Ardèche', price: 90, user: bob)
#romantic.save!
#bohemian = Tent.new(title: 'Bohemian', capacity: 10, comfort_level: 3, description: 'After-party', location: 'Les Saintes Maries de la Mer', price: 40, user: bob)
#bohemian.save!
#rough = Tent.new(title: 'Rough', capacity: 5, comfort_level: 2, description: 'Males only', location: 'Pyrenées', price: 20, user: mickael)
#rough.save!
#luxury = Tent.new(title: 'Luxury', capacity: 2, comfort_level: 5, description: 'Amazing', location: 'Saint Raphael', price: 100, user: mickael)
#luxury.save!

require "open-uri"

#gigi = ('https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80')
cesar = 'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80'
nina = 'https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'
gigi1 = 'https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'

###1
gigi1 = URI.open('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')

photo1 = URI.open('https://images.unsplash.com/photo-1568872321643-14b2408cd5f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80')
photo2 = URI.open('https://images.unsplash.com/photo-1576078377230-683fde25f876?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80')
photo3 = URI.open('https://images.unsplash.com/photo-1573770607112-a3d6e6576bf0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=627&q=80')

extreme = Tent.new(title: 'Extreme', capacity: 3, comfort_level: 3, description: 'Strong Sensations', location: 'Grandes Jorasses', price: 90)
gigi = User.new(email: 'gigi@super.com', password: '123456', first_name: 'Gigi', last_name: 'Haddid')
gigi.avatar.attach(io: gigi1, filename: 'gigi1.png', content_type: 'image/png')
gigi.save!
extreme.user = gigi
extreme.photo_one.attach(io: photo1, filename: 'extreme1.png', content_type: 'image/png')
extreme.photo_two.attach(io: photo2, filename: 'extreme1.png', content_type: 'image/png')
extreme.photo_three.attach(io: photo3, filename: 'extreme3.png', content_type: 'image/png')
extreme.save!

###2
nina1 = URI.open('https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')

photo7 = URI.open('https://images.unsplash.com/photo-1530488345268-51e6128cb132?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
photo8 = URI.open('https://images.unsplash.com/photo-1530984689090-a5d916692305?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
photo9 = URI.open('https://images.unsplash.com/photo-1554122741-f3cf033dc499?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80')

soldier = Tent.new(title: 'Soldier', capacity: 1, comfort_level: 1, description: 'Rough and tough', location: 'Chamonix', price: 60)
nina = User.new(email: 'nina@gmail.com', password: '556688', first_name: 'Nina', last_name: 'Haddod')
nina.avatar.attach(io: nina1, filename: 'nina1.png', content_type: 'image/png')
nina.save!
soldier.user = nina
soldier.photo_one.attach(io: photo7, filename: 'soldier1.png', content_type: 'image/png')
soldier.photo_two.attach(io: photo8, filename: 'soldier1.png', content_type: 'image/png')
soldier.photo_three.attach(io: photo9, filename: 'soldier3.png', content_type: 'image/png')
soldier.save!

###3
cesar1 = URI.open('https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')

photo4 = URI.open('https://images.unsplash.com/photo-1578145288677-6e6842916b90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80')
photo5 = URI.open('https://images.unsplash.com/photo-1536028943632-1b302c2761b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=859&q=80')
photo6 = URI.open('https://images.unsplash.com/photo-1459378560864-f0b73495599c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

top = Tent.new(title: 'On the Top', capacity: 2, comfort_level: 2, description: 'King of the World', location: 'Mégève', price: 100)
cesar = User.new(email: 'cesar@gmail.com', password: '3333333', first_name: 'Cesar', last_name: 'Haddad')
cesar.avatar.attach(io: cesar1, filename: 'cesar.png', content_type: 'image/png')
cesar.save!
top.user = cesar
top.photo_one.attach(io: photo4, filename: 'top1.png', content_type: 'image/png')
top.photo_two.attach(io: photo5, filename: 'top2.png', content_type: 'image/png')
top.photo_three.attach(io: photo6, filename: 'top3.png', content_type: 'image/png')
top.save!

###4
cesar1 = URI.open('https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')

photo10 = URI.open('https://images.unsplash.com/photo-1506219033545-98584395b982?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
photo11 = URI.open('https://images.unsplash.com/photo-1516905829796-de95416f8a6a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80')
photo12 = URI.open('https://images.unsplash.com/photo-1459378560864-f0b73495599c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

panorama = Tent.new(title: 'Panorama', capacity: 1, comfort_level: 1, description: 'Solitary but not alone', location: 'Annecy', price: 100)
cesar = User.new(email: 'cesar2@gmail.com', password: '332233', first_name: 'Cesar', last_name: 'Haddad')
cesar.avatar.attach(io: cesar1, filename: 'cesar.png', content_type: 'image/png')
cesar.save!
panorama.user = cesar
panorama.photo_one.attach(io: photo10, filename: 'top1.png', content_type: 'image/png')
panorama.photo_two.attach(io: photo11, filename: 'top2.png', content_type: 'image/png')
panorama.photo_three.attach(io: photo12, filename: 'top3.png', content_type: 'image/png')
panorama.save!


###






