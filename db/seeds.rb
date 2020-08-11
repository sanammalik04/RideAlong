# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Passenger.destroy_all
Driver.destroy_all
Ride.destroy_all


20.times {Passenger.create(name: Faker::Name.name,
        address: Faker::Address.street_address,
        number_of_rides: Faker::Number.between(from: 1, to: 100))}

                     

20.times {Driver.create(name: Faker::Name.name,
        car_model: Faker::Vehicle.model,
        car_make: Faker::Vehicle.make)}

20.times {Ride.create(driver_id: Driver.all.sample.id, passenger_id: Passenger.all.sample.id)}