# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

include Faker
1.times do
  User.create(
          email: 'arlen@gmail.com',
          password: '123123123'
  )
end
10.times do
  Enterprise.create(
    name: Faker::Company.name,
    description: Faker::Lorem.characters,
    category: Faker::Company.suffix,
    country: Faker::Nation.nationality,
    imagePath: Faker::Number.number(10)
  )
end