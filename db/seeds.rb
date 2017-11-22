# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

500.times do
  company = Company.create(
    name: Faker::Company.name,
    comment: Faker::Company.bs
  )
  company.update_attribute(:created_at, rand(365).days.ago)
end
