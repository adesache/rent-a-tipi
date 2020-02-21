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

###1 -- Alpes
gigi1 = URI.open('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')

photo1 = URI.open('https://images.unsplash.com/photo-1568872321643-14b2408cd5f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80')
photo2 = URI.open('https://images.unsplash.com/photo-1576078377230-683fde25f876?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80')
photo3 = URI.open('https://images.unsplash.com/photo-1573770607112-a3d6e6576bf0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=627&q=80')

extreme = Tent.new(title: 'Extreme', capacity: 3, comfort_level: 3, description: 'Extreme conditions also: tent - 3kg, setup: easy', location: '74000, Annecy, France', price: 90)
gigi = User.new(email: 'gigi@super.com', password: '123456', first_name: 'Gigi', last_name: 'Haddid')
gigi.avatar.attach(io: gigi1, filename: 'gigi1.png', content_type: 'image/png')
gigi.save!
extreme.user = gigi
extreme.photo_one.attach(io: photo1, filename: 'extreme1.png', content_type: 'image/png')
extreme.photo_two.attach(io: photo2, filename: 'extreme1.png', content_type: 'image/png')
extreme.photo_three.attach(io: photo3, filename: 'extreme3.png', content_type: 'image/png')
extreme.save!

###2
nina1 = URI.open('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80')

photo7 = URI.open('https://images.unsplash.com/photo-1530488345268-51e6128cb132?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
photo8 = URI.open('https://images.unsplash.com/photo-1530984689090-a5d916692305?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
photo9 = URI.open('https://images.unsplash.com/photo-1554122741-f3cf033dc499?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80')

soldier = Tent.new(title: 'Soldier', capacity: 1, comfort_level: 1, description: 'Super light: tent - 1,8kg, setup: super-easy', location: '74400, Chamonix, France', price: 60)
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

top = Tent.new(title: 'On the Top', capacity: 2, comfort_level: 2, description: 'Top quality: brand: MSR (Access 3 Orange) 2kg, setup: easy' , location: '74120, Mégève, France', price: 100)
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


photo10 = URI.open('https://images.unsplash.com/photo-1575716703394-bdec07964dab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
photo11 = URI.open('https://i.pinimg.com/564x/89/09/87/89098771fff9e1588d7b631782985ff8.jpg')
photo12 = URI.open('https://images.unsplash.com/photo-1459378560864-f0b73495599c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

panorama = Tent.new(title: 'Panorama', capacity: 1, comfort_level: 1, description: 'Nice design and comfy: tent - 2,5kg, setup: easy', location: '73200, Albertville, France', price: 100)
cesar = User.new(email: 'cesar2@gmail.com', password: '332233', first_name: 'Cesar', last_name: 'Haddad')
cesar.avatar.attach(io: cesar1, filename: 'cesar.png', content_type: 'image/png')
cesar.save!
panorama.user = cesar
panorama.photo_one.attach(io: photo10, filename: 'top1.png', content_type: 'image/png')
panorama.photo_two.attach(io: photo11, filename: 'top2.png', content_type: 'image/png')
panorama.photo_three.attach(io: photo12, filename: 'top3.png', content_type: 'image/png')
panorama.save!


### 5 -- Camargues

sara1 = URI.open('https://sl-photos.fr/koken/storage/cache/images/000/194/Portrait-carre-11-Gwendoline,medium.2x.1548276302.jpg')

photo15 = URI.open('https://i.pinimg.com/564x/0e/36/d8/0e36d8f3e89463d33058c155d80abcd1.jpg')
photo16 = URI.open('https://i.pinimg.com/564x/c4/20/34/c4203406f7cdf2713802f15b7a2c0559.jpg')
photo17 = URI.open('https://i.pinimg.com/564x/98/f3/d2/98f3d253e9c9dc2716b6d5985b83f662.jpg')

glam = Tent.new(title: 'Glam', capacity: 6, comfort_level: 5, description: 'Luxury, setup on demand, estimate: 200 €', location: '84000, Avignon, France', price: 400)
sara = User.new(email: 'sara@gmail.com', password: '556677', first_name: 'Sara', last_name: 'Gut')
sara.avatar.attach(io: sara1, filename: 'sara1.png', content_type: 'image/png')
sara.save!
glam.user = sara
glam.photo_one.attach(io: photo15, filename: 'photo15.png', content_type: 'image/png')
glam.photo_two.attach(io: photo16, filename: 'photo16.png', content_type: 'image/png')
glam.photo_three.attach(io: photo17, filename: 'photo17.png', content_type: 'image/png')
glam.save!

### 6 --- Camargues

sara1 = URI.open('https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')

photo18 = URI.open('https://i.pinimg.com/564x/55/d5/3e/55d53e6e5f316d34a24df386d31e84a6.jpg')
photo19 = URI.open('https://i.pinimg.com/564x/8d/6e/bf/8d6ebf562d41fe18397457726891d260.jpg')
photo20 = URI.open('https://i.pinimg.com/564x/31/64/79/3164792fabe313fdc7f73f4bbef04c99.jpg')

igloo = Tent.new(title: 'Igloo', capacity: 3, comfort_level: 5, description: 'High-end, setup on demand, estimate: 100 €', location: '13200, Arles, France', price: 300)
sara = User.new(email: 'sara1@gmail.com', password: '522677', first_name: 'Sara', last_name: 'Gut')
sara.avatar.attach(io: sara1, filename: 'sara1.png', content_type: 'image/png')
sara.save!
igloo.user = sara
igloo.photo_one.attach(io: photo18, filename: 'photo18.png', content_type: 'image/png')
igloo.photo_two.attach(io: photo19, filename: 'photo19.png', content_type: 'image/png')
igloo.photo_three.attach(io: photo20, filename: 'photo20.png', content_type: 'image/png')
igloo.save!


### 7 --- Camargues

line1 = URI.open('https://www.posepartagemedia.com/images/ctrb/26-07-2015-portrait-au-carre-3.jpg')

photo21 = URI.open('https://i.pinimg.com/564x/7e/b6/f3/7eb6f33578acf5edf6d11d1096a10ece.jpg')
photo22 = URI.open('https://i.pinimg.com/564x/35/56/b8/3556b8675ac809605bda8cb2bcfcf68c.jpg')
photo23 = URI.open('https://i.pinimg.com/564x/0e/31/22/0e312261c66c70678aa83045af5ab97c.jpg')

green_house = Tent.new(title: 'Green House', capacity: 5, comfort_level: 4, description: 'Countryside, setup on demand, estimate: 150 €', location: '30900, Nîmes, France', price: 300)
line = User.new(email: 'line@gmail.com', password: '522997', first_name: 'Line', last_name: 'Grg')
line.avatar.attach(io: line1, filename: 'line1.png', content_type: 'image/png')
line.save!
green_house.user = line
green_house.photo_one.attach(io: photo21, filename: 'photo21.png', content_type: 'image/png')
green_house.photo_two.attach(io: photo22, filename: 'photo22.png', content_type: 'image/png')
green_house.photo_three.attach(io: photo23, filename: 'photo23.png', content_type: 'image/png')
green_house.save!

### 8 --- Camargues

line1 = URI.open('https://www.posepartagemedia.com/images/ctrb/26-07-2015-portrait-au-carre-3.jpg')

photo24 = URI.open('https://i.pinimg.com/564x/98/d6/e2/98d6e285684d3d6a4969cc77a94783fd.jpg')
photo25 = URI.open('https://i.pinimg.com/564x/35/14/fc/3514fcc5e5187e31a66cde4bf9c48d8a.jpg')
photo26 = URI.open('https://i.pinimg.com/564x/38/8e/f6/388ef6018ca2145874eb5bc43e57a38f.jpg')

pure = Tent.new(title: 'Pure', capacity: 2, comfort_level: 2, description: 'Close to nature, setup on demand, estimate: 150 €', location: '13460, Les Saintes Maries de la Mer, France', price: 200)
line = User.new(email: 'line3@gmail.com', password: '117997', first_name: 'Line', last_name: 'Grg')
line.avatar.attach(io: line1, filename: 'line1.png', content_type: 'image/png')
line.save!
pure.user = line
pure.photo_one.attach(io: photo24, filename: 'photo24.png', content_type: 'image/png')
pure.photo_two.attach(io: photo25, filename: 'photo25.png', content_type: 'image/png')
pure.photo_three.attach(io: photo26, filename: 'photo26.png', content_type: 'image/png')
pure.save!

### 9 --- St Raphael

uli1 = URI.open('https://www.clindoeil-ponot.photo/uploads/img/321-portrait-carre-studio.jpg')

photo27 = URI.open('https://i.pinimg.com/564x/57/0c/02/570c02d392997b117a40d923cd35cd50.jpg')
photo28 = URI.open('https://i.pinimg.com/564x/14/dc/74/14dc74dc18d21e0d32d5a0602e6f28cc.jpg')
photo29 = URI.open('https://i.pinimg.com/564x/24/db/1e/24db1e7d316fc1380b44be5456f4a2f7.jpg')

fantastic = Tent.new(title: 'Fantastic', capacity: 4, comfort_level: 5, description: 'Tent on the seaside, Available on place', location: 'Saint-Raphaël', price: 600)
uli = User.new(email: 'uli3@gmail.com', password: '115597', first_name: 'Uli', last_name: 'Greg')
uli.avatar.attach(io: uli1, filename: 'uli1.png', content_type: 'image/png')
uli.save!
fantastic.user = uli
fantastic.photo_one.attach(io: photo27, filename: 'photo27.png', content_type: 'image/png')
fantastic.photo_two.attach(io: photo28, filename: 'photo28.png', content_type: 'image/png')
fantastic.photo_three.attach(io: photo29, filename: 'photo29.png', content_type: 'image/png')
fantastic.save!


### 10 --- St Raphael

lea1 = URI.open('https://3.bp.blogspot.com/-bHa4el4ktQA/Tz-DV33K6bI/AAAAAAAABa4/9BCoyhm0_vw/s1600/IMG_9544.jpg')

photo30 = URI.open('https://i.pinimg.com/564x/71/ef/20/71ef20c425b7e00b832915827822ef60.jpg')
photo31 = URI.open('https://i.pinimg.com/564x/f9/57/1f/f9571faf4d1a9303bba1fc1d9726616a.jpg')
photo32 = URI.open('https://i.pinimg.com/564x/9a/79/5a/9a795a020c8acc102597098fb7120010.jpg')

camping = Tent.new(title: 'Camping', capacity: 3, comfort_level: 2, description: 'Rustic, setup on demand, estimate: 100 €', location: '83370, Fréjus, France', price: 200)
lea = User.new(email: 'lea@gmail.com', password: '177597', first_name: 'Lea', last_name: 'Gregory')
lea.avatar.attach(io: lea1, filename: 'lea1.png', content_type: 'image/png')
lea.save!
camping.user = lea
camping.photo_one.attach(io: photo30, filename: 'photo30.png', content_type: 'image/png')
camping.photo_two.attach(io: photo31, filename: 'photo31.png', content_type: 'image/png')
camping.photo_three.attach(io: photo32, filename: 'photo32.png', content_type: 'image/png')
camping.save!

### 11 --- St Raphael

raf1 = URI.open('https://previews.123rf.com/images/eugenesergeev/eugenesergeev1605/eugenesergeev160500159/56871099-closeup-portrait-carr%C3%A9-en-plein-air-de-jeune-homme-asiatique-barbu-en-noir-sur-fond-de-b%C3%A2timent-grungy-p.jpg')

photo30 = URI.open('https://i.pinimg.com/564x/c1/d2/b8/c1d2b82b2c5f9d9ca805badb315a7996.jpg')
photo31 = URI.open('https://i.pinimg.com/564x/36/38/48/363848d8081f4aedc10f956ad4b10eea.jpg')
photo32 = URI.open('https://i.pinimg.com/564x/6b/27/2c/6b272c8fc4703dfb22f199317e89e58e.jpg')

hybrid = Tent.new(title: 'Hybrid', capacity: 2, comfort_level: 5, description: 'Hybrid luxury, setup estimate: 90 €', location: '83300, Draguignan, France', price: 250)
raf = User.new(email: 'raf@gmail.com', password: '199597', first_name: 'Raf', last_name: 'Bluegory')
raf.avatar.attach(io: raf1, filename: 'raf1.png', content_type: 'image/png')
raf.save!
hybrid.user = raf
hybrid.photo_one.attach(io: photo30, filename: 'photo30.png', content_type: 'image/png')
hybrid.photo_two.attach(io: photo31, filename: 'photo31.png', content_type: 'image/png')
hybrid.photo_three.attach(io: photo32, filename: 'photo32.png', content_type: 'image/png')
hybrid.save!

### 12 --- St Raphael

bob1 = URI.open('https://iphotographie.fr/wp-content/uploads/2019/04/PORTRAITCARRE03.jpg')

photo33 = URI.open('https://i.pinimg.com/564x/f2/59/b3/f259b37104db80f8dcdcfe50562a373f.jpg')
photo34 = URI.open('https://i.pinimg.com/564x/ab/53/dd/ab53ddc9154ab4b9a7f6ebf7c12c6fa9.jpg')
photo35 = URI.open('https://i.pinimg.com/564x/fc/79/76/fc7976290408cd07d7891347483cfd73.jpg')

sporty = Tent.new(title: 'Sporty', capacity: 2, comfort_level: 1, description: 'Sporty and light, easy setup, 5kg', location: '83700, Le Dramont, France', price: 90)
bob = User.new(email: 'bob@gmail.com', password: '199597', first_name: 'Bob', last_name: 'Bluvery')
bob.avatar.attach(io: bob1, filename: 'bob1.png', content_type: 'image/png')
bob.save!
sporty.user = bob
sporty.photo_one.attach(io: photo33, filename: 'photo33.png', content_type: 'image/png')
sporty.photo_two.attach(io: photo34, filename: 'photo34.png', content_type: 'image/png')
sporty.photo_three.attach(io: photo35, filename: 'photo35.png', content_type: 'image/png')
sporty.save!

### 13 --- St Raphael

mary1 = URI.open('https://ccomcatherine.fr/wp-content/uploads/2019/03/CComCatherine-Catherine-Ducolone-portrait-carre-350x350.jpg')

photo36 = URI.open('https://i.pinimg.com/564x/cc/27/d9/cc27d992a1c3629ec3e508d15c0af64e.jpg')
photo37 = URI.open('https://i.pinimg.com/564x/50/82/3c/50823ce2739d4d01896833fdfe863852.jpg')
photo38 = URI.open('https://i.pinimg.com/564x/60/aa/54/60aa54dfbfa79ea699eb4bbf7f0775e0.jpg')

under_the_stars = Tent.new(title: 'Under the stars', capacity: 3, comfort_level: 2, description: 'Romantic, easy setup, 6kg', location: '83120, Sainte Maxime, France', price: 100)
mary = User.new(email: 'mary@gmail.com', password: '177597', first_name: 'Mary', last_name: 'Bery')
mary.avatar.attach(io: mary1, filename: 'mary1.png', content_type: 'image/png')
mary.save!
under_the_stars.user = mary
under_the_stars.photo_one.attach(io: photo36, filename: 'photo36.png', content_type: 'image/png')
under_the_stars.photo_two.attach(io: photo37, filename: 'photo37.png', content_type: 'image/png')
under_the_stars.photo_three.attach(io: photo38, filename: 'photo38.png', content_type: 'image/png')
under_the_stars.save!


### 14 --- St Raphael

bea1 = URI.open('https://www.clindoeil-ponot.photo/uploads/img/92-portrait-noir-et-blanc.jpg?nc=1486633510')

photo39 = URI.open('https://i.pinimg.com/564x/94/85/57/948557693139f486be7f2c37a39c0c35.jpg')
photo40 = URI.open('https://i.pinimg.com/564x/a4/de/f7/a4def76592e0958b695c607aa269d119.jpg')
photo41 = URI.open('https://i.pinimg.com/564x/9e/ff/4a/9eff4ad8c364edbb82dad3b7ab88a38b.jpg')

tatooine = Tent.new(title: 'Tatooine', capacity: 2, comfort_level: 4, description: 'Magical, setup estimate: 120 €', location: '83490, Le Muy, France, France', price: 100)
bea = User.new(email: 'bea@gmail.com', password: '174597', first_name: 'Bea', last_name: 'Bery')
bea.avatar.attach(io: bea1, filename: 'bea1.png', content_type: 'image/png')
bea.save!
tatooine.user = bea
tatooine.photo_one.attach(io: photo39, filename: 'photo39.png', content_type: 'image/png')
tatooine.photo_two.attach(io: photo40, filename: 'photo40.png', content_type: 'image/png')
tatooine.photo_three.attach(io: photo41, filename: 'photo41.png', content_type: 'image/png')
tatooine.save!









