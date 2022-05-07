require 'faker'

puts "Cleaning database..."
Game.destroy_all

puts "Creating games..."

4.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/7022/0/COTW-Parc-Montsouris-1476553126.jpg', 'https://www.courtsoftheworld.com/upload/courts/7022/0/COTW-Parc-Montsouris-1476552999.jpg']
  game = Game.create(
    address: "2 Rue Gazan, 75014 Paris, France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample
)
  puts "Game #{game.id}"
end

4.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-bir-hakeim-playground-1635761352.jpeg', 'https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-Bir-Hakeim-Playground-1635759767.jpg']
  game = Game.create(
    address: "77-101 Quai Branly Paris 75015,France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample
)
  puts "Game #{game.id}"
end

4.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/108/0/COTW-Stade-George-Carpentier-1568312843.jpg', 'https://media.routard.com/image/55/1/photo.1444551.w430.jpg']
  game = Game.create(
    address: "1 Place de Port-au-Prince Paris 75013, France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample
)
  puts "Game #{game.id}"
end

puts "Finished!"
