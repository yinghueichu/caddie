# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users...'
User.create!([
  {email: "manon@caddie.io", password: "manon@caddie.io"},
  {email: "nicolas@caddie.io", password: "nicolas@caddie.io"},
  {email: "ying@caddie.io", password: "ying@caddie.io"},
])

puts "#{User.count} users created"
