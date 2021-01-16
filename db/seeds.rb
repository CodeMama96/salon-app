# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(name: Faker::FunnyName.unique.name, email: Faker::Internet.unique.email, password: Faker::Internet.unique.password)
    Appointment.create(time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long)
end