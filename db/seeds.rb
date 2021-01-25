# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    Service.create([
    {name: 'Brazilian Blowout', price: 25.00}, 
    {name: 'Hair Color', price: 100.00}, 
    {name: 'Wax', price: 50.00}, 
    {name: 'Hair Trim', price: 20.00}, 
    {name: 'Manicure', price: 50.00}, 
    {name: 'Pedicure', price: 40.00}, 
    {name: 'Massage', price: 75.00}, 
    {name: 'Eyelash Extension', price: 90.00}, 
    {name: 'Kids Cut', price: 15.00}, 
    {name: 'Mens Cut', price: 20.00}])


10.times do
    Stylist.create([{ name: Faker::Name.name}])
end
