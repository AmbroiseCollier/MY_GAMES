require 'faker'

puts "Cleaning database..."
Game.destroy_all

puts "Creating games..."

100.times do
  games =  Game.create(
    address: Faker::Address.full_address,
    date: Faker::Date.in_date_period,
    city: Faker::Address.city,
)
end

puts "Finished!"
