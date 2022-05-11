require 'faker'

puts "Cleaning games from database..."
Reservation.destroy_all
Game.destroy_all
Player.destroy_all

puts "Creating players..."

player1 = Player.create(
  name: 'Michael',
  last_name: 'Jordan',
  age: '36',
  years: '20',
  email: 'mike@gmail.com',
  password: 'password'
)
puts "player #{player1.id}"

player2 = Player.create(
  name: 'Kobe',
  last_name: 'Bryant',
  age: '46',
  years: '20',
  email: 'kobe@gmail.com',
  password: 'password'
)
puts "player #{player2.id}"

player3 = Player.create(
  name: 'Charles',
  last_name: 'barkley',
  age: '56',
  years: '50',
  email: 'Chuck@gmail.com',
  password: 'password'
)
puts "player #{player3.id}"

player4 = Player.create(
  name: 'shaquille',
  last_name: "Oneal",
  age: '50',
  years: '40',
  email: 'shaq@gmail.com',
  password: 'password'
)
puts "player #{player4.id}"

array = [player1, player2, player3, player4]

puts "Creating games..."


10.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/7022/0/COTW-Parc-Montsouris-1476553126.jpg','https://img.20mn.fr/D_enV1s2Q6u0Dl7cIvGPUw/830x532_playground-duperre-ixe.jpg','https://static.dezeen.com/uploads/2017/06/basket-court-pigalle-studio-architecture-public-leisure-paris-france-_dezeen_hero-b.jpg' ,'https://www.courtsoftheworld.com/upload/courts/7022/0/COTW-Parc-Montsouris-1476552999.jpg']
  game = Game.create(
    address: "2 Rue Gazan, 75014 Paris, France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample,
    creator: array.sample
)
  puts "Game #{game.id}"
end

6.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-bir-hakeim-playground-1635761352.jpeg', 'https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-Bir-Hakeim-Playground-1435374288.jpg' ,'https://storage.googleapis.com/eyp-wordpress/1/2020/01/playground-pigalle.jpg' , 'https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-Bir-Hakeim-Playground-1635759767.jpg']
  game = Game.create(
    address: "77-101 Quai Branly Paris 75015,France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample,
    creator: array.sample

)
  puts "Game #{game.id}"
end

4.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/108/0/COTW-Stade-George-Carpentier-1568312843.jpg', 'https://media.routard.com/image/55/1/photo.1444551.w430.jpg']
  game = Game.create(
    address: "1 Place de Port-au-Prince Paris 75013, France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample,
    creator: array.sample

  )
  puts "Game #{game.id}"
end

puts "Finished with games!"
