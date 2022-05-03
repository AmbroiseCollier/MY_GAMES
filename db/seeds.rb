# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'

puts "Cleaning database..."
Game.destroy_all

puts "Creating games..."

100.times do
  games =  Game.create(
    address: Faker::Address.full_address,
    date: Date.new(2001,2,3)
)
end

puts "Finished!"
