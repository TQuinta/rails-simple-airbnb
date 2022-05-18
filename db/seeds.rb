# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'creating your flats'
puts 'thinking'
10.times do
  flat = Flat.new(
    name: Faker::Beer.name,
    description: Faker::Fantasy::Tolkien.poem,
    address: Faker::Address.full_address,
    number_of_guests: rand(1..10),
    price_per_night: rand(50...500)
  )
  puts "creating flat - #{flat.name}"
  flat.save!
end

puts 'compeleted the creation of flats'
