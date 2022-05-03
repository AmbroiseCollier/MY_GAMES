require 'faker'

puts "Cleaning database..."
Game.destroy_all

puts "Creating games..."

100.times do
  games =  Game.create(
    address: Faker::Address.full_address,
    date: Date.new(2001,2,3),
    city: Faker::Address.city,
)
end

puts "Finished!"
