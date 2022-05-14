require 'faker'

puts "Cleaning games from database..."
Reservation.destroy_all
Game.destroy_all
Player.destroy_all

puts "Creating players..."

player1 = Player.create!(
  name: 'Michael',
  last_name: 'Jordan',
  age: '36',
  years: '20',
  email: 'mike@gmail.com',
  password: 'password'
)
puts "player #{player1.id}"

player2 = Player.create!(
  name: 'Kobe',
  last_name: 'Bryant',
  age: '46',
  years: '20',
  email: 'kobe@gmail.com',
  password: 'password'
)
puts "player #{player2.id}"

player3 = Player.create!(
  name: 'Charles',
  last_name: 'barkley',
  age: '56',
  years: '50',
  email: 'Chuck@gmail.com',
  password: 'password'
)
puts "player #{player3.id}"

player4 = Player.create!(
  name: 'Shaquille',
  last_name: "Oneal",
  age: '50',
  years: '40',
  email: 'shaq@gmail.com',
  password: 'password'
)
puts "player #{player4.id}"

player5 = Player.create!(
  name: 'Emmanuel',
  last_name: "Ginobili",
  age: '44',
  years: '39',
  email: 'manu@gmail.com',
  password: 'password'
)
puts "player #{player5.id}"

player6 = Player.create!(
  name: 'Tony',
  last_name: "Parker",
  age: '39',
  years: '35',
  email: 'tony@gmail.com',
  password: 'password'
)
puts "player #{player6.id}"


array = [player1, player2, player3, player5, player6]
message = ['Sure, let s play ball','Can we change the time?','Hey Man, count on me','I ll lock your ass up','Dispo!','Yo, Im up for it','Hi, I want to play']
myplayer = array.sample
resa = ''
comment = ''

puts "Creating games..."
10.times do
  resa1 = ''

  images = ['https://www.courtsoftheworld.com/upload/courts/7022/0/COTW-Parc-Montsouris-1476553126.jpg','https://img.20mn.fr/D_enV1s2Q6u0Dl7cIvGPUw/830x532_playground-duperre-ixe.jpg','https://static.dezeen.com/uploads/2017/06/basket-court-pigalle-studio-architecture-public-leisure-paris-france-_dezeen_hero-b.jpg' ,'https://www.courtsoftheworld.com/upload/courts/7022/0/COTW-Parc-Montsouris-1476552999.jpg']
  game = Game.create!(
    address: "2 Rue Gazan, 75014 Paris, France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample,
    creator: player4
  )
  puts "Game #{game.id} created"

  10.times do
    array1 = [player1, player2, player3, player5, player6]
    message1 = ['Sure, let s play ball','Can we change the time?','Hey Man, count on me','I ll lock your ass up','Dispo!','Yo, Im up for it','Hi, I want to play']
    myplayer1 = array1.sample

    resa1 = Reservation.create!(
      game_id: game.id,
      player_id: myplayer1.id,
      message: message1.sample
    )
  end
  puts "Reservation #{resa1.id} created"

  5.times do
    array1 = [player1, player2, player3, player5, player6]
    message1 = ["Yo, do you've a ball?",'Can we change the time?',"Dude, your shots are like all my Facebook messages to my ex-girlfriend — desperate, pathetic, and every one of them gets blocked.",'I ll lock your ass up',"Bring out your Turkey's because I brought the STUFFING!", "I’m just looking around to see who’s gonna finish second.", "Get your popcorn ready, 'cause I'm gonna put on a show"]
    myplayer1 = array1.sample

    comment = Review.create!(
      game_id: game.id,
      player_id: myplayer1.id,
      content: message1.sample,
      created_at: Faker::Date.between(from: 2.days.ago, to: Date.today)
    )

  end
    puts "Comment #{comment.id} created"


end

10.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-bir-hakeim-playground-1635761352.jpeg', 'https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-Bir-Hakeim-Playground-1435374288.jpg' ,'https://storage.googleapis.com/eyp-wordpress/1/2020/01/playground-pigalle.jpg' , 'https://www.courtsoftheworld.com/upload/courts/8375/0/COTW-Bir-Hakeim-Playground-1635759767.jpg']
  game = Game.create!(
    address: "77-101 Quai Branly Paris 75015,France",
    date: '2022-05-22',
    city: "Paris",
    picture_url: images.sample,
    creator: array.sample
  )
  puts "Game #{game.id} created"
  10.times do
    resa = Reservation.create!(
      game_id: game.id,
      player_id: myplayer.id,
      message: message.sample
    )
  end
  puts "Reservation #{resa.id} created"

end


4.times do
  images = ['https://www.courtsoftheworld.com/upload/courts/108/0/COTW-Stade-George-Carpentier-1568312843.jpg', 'https://media.routard.com/image/55/1/photo.1444551.w430.jpg']
  game = Game.create!(
    address: "1 Place de Port-au-Prince Paris 75013, France",
    date: Faker::Date.in_date_period,
    city: "Paris",
    picture_url: images.sample,
    creator: array.sample
  )
  puts "Game #{game.id} created"

  10.times do
    resa = Reservation.create!(
      game_id: game.id,
      player_id: myplayer.id,
      message: message.sample
    )
  end
  puts "Reservation #{resa.id} created"
end

15.times do
  images = ['https://s3-media0.fl.yelpcdn.com/bphoto/juTToJyiimNKdY4lFZ61wQ/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/N2k5yNuldHfRDLZ7fhbT2Q/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/lAA4idl8GVihXk_Md0sREw/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/AX1TR0HOBKrJ1e7qE73R0g/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/h_eJnuw8D05tsrY5rYfHfQ/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/rNLoq-qfk1hlNs_Pbl9Wrg/o.jpg']
  game = Game.create!(
    address: "155TH St And Frederick Douglass Blvd, New York, NY 10039 ",
    date: Faker::Date.in_date_period,
    city: "New York",
    picture_url: images.sample,
    creator: array.sample
  )
  puts "Game #{game.id}"

  10.times do
    array1 = [player1, player2, player3, player5, player6]
    message1 = ['Sure, let s play ball','Can we change the time?','Hey Man, count on me','I ll lock your ass up','Dispo!','Yo, Im up for it','Hi, I want to play']
    myplayer1 = array1.sample

    resa = Reservation.create!(
      game_id: game.id,
      player_id: myplayer1.id,
      message: message1.sample
    )
  end
  puts "Reservation #{resa.id} created"
end

5.times do
  images = ['https://s3-media0.fl.yelpcdn.com/bphoto/juTToJyiimNKdY4lFZ61wQ/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/N2k5yNuldHfRDLZ7fhbT2Q/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/lAA4idl8GVihXk_Md0sREw/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/AX1TR0HOBKrJ1e7qE73R0g/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/h_eJnuw8D05tsrY5rYfHfQ/o.jpg', 'https://s3-media0.fl.yelpcdn.com/bphoto/rNLoq-qfk1hlNs_Pbl9Wrg/o.jpg']
  game = Game.create!(
    address: "155TH St And Frederick Douglass Blvd, New York, NY 10039 ",
    date: '2022-05-22',
    city: "New York",
    picture_url: images.sample,
    creator: array.sample
  )
  puts "Game #{game.id}"

  10.times do
    array1 = [player1, player2, player3, player5, player6]
    message1 = ['Sure, let s play ball','Can we change the time?','Hey Man, count on me','I ll lock your ass up','Dispo!','Yo, Im up for it','Hi, I want to play']
    myplayer1 = array1.sample

    resa = Reservation.create!(
      game_id: game.id,
      player_id: myplayer1.id,
      message: message1.sample
    )
  end
  puts "Reservation #{resa.id} created"
end


puts "Finished with games!"
