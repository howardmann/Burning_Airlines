# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# AIRPLANE
Airplane.destroy_all
airplane1 = Airplane.create(name: '757', rows: 4, columns: 24)
airplane2 = Airplane.create(name: '747', rows: 4, columns: 24)
airplane3 = Airplane.create(name: '190', rows: 20, columns: 30)

# Check plane length
puts "Airplane count: #{Airplane.all.length}"
puts "Airplane names: #{Airplane.all.pluck("name")}"


# FLIGHT
Flight.destroy_all
flight1 = Flight.create(number: '23', origin: 'JFK', destination: 'SFO', date: '2013-01-03')

flight2 = Flight.create(number: '87', origin: 'JFK', destination: 'LAX', date: '2013-03-03')

flight3 = Flight.create(number: '09', origin: 'JFK', destination: 'SFO', date: '2013-08-03')

# Check Flight length
puts "\nFlight count: #{Flight.all.length}"
puts "Flight numbers: #{Flight.all.pluck('number')}"

# Associate flight to plane
airplane1.flights << flight1
airplane2.flights << flight2
airplane1.flights << flight3

# Check flight relationships
puts "\nFlight1 airplane is: #{flight1.airplane.name}"
puts "Flight2 airplane is: #{flight2.airplane.name}"
puts "Flight3 airplane is: #{flight3.airplane.name}"


# USER
User.destroy_all
user1 = User.create(name: "Sam")
user2 = User.create(name: "Sue")
user3 = User.create(name: "Tom")
user4 = User.create(name: "Tim")
user5 = User.create(name: "Jill")

# Check User length
puts "\nUser count: #{User.all.length}"
puts "User names: #{User.all.pluck("name")}"

# RESERVATIONS
Reservation.destroy_all
reservation1 = Reservation.create({:row => 1, :column =>21 })
reservation2 = Reservation.create({:row => 2, :column =>22 })
reservation3 = Reservation.create({:row => 3, :column =>22 })
reservation4 = Reservation.create({:row => 4, :column =>22 })
reservation5 = Reservation.create({:row => 3, :column =>23 })

# Check reservation length
puts "\nReservation count: #{Reservation.all.length}"
puts "Reservation id: #{Reservation.all.pluck("id")}"

user1.reservations << reservation1
user2.reservations << reservation2
user3.reservations << reservation3
user4.reservations << reservation4
user5.reservations << reservation5

# Append reservations to flight
flight3.reservations << reservation1 << reservation2 << reservation3 << reservation4 << reservation5

# Check reservation names
puts "\nReservation1 user name is: #{reservation1.user.name}; seat is row: #{reservation1.row} and col: #{reservation1.column} for flight #{reservation1.flight.number}"

puts "Reservation2 user name is: #{reservation2.user.name}; seat is row: #{reservation2.row} and col: #{reservation2.column} for flight #{reservation2.flight.number}"

puts "Reservation3 user name is: #{reservation3.user.name}; seat is row: #{reservation3.row} and col: #{reservation3.column} for flight #{reservation3.flight.number}"

puts "Reservation4 user name is: #{reservation4.user.name}; seat is row: #{reservation4.row} and col: #{reservation4.column} for flight #{reservation4.flight.number}"

puts "Reservation5 user name is: #{reservation5.user.name}; seat is row: #{reservation5.row} and col: #{reservation5.column} for flight #{reservation5.flight.number}"





  # reservation1 = Reservation.create({:row => 1; :col =>21 }), user1.reservations << reservation1, reservation1.flights << flight3

  # reservation2 = Reservation.create({:row => 2; :col =>22 }), user2.reservations << reservation2, reservation2.flights << flight3

  # reservation3 = Reservation.create({:row => 3; :col =>22 }), user3.reservations << reservation3, reservation3.flights << flight3

  # reservation4 = Reservation.create({:row => 4; :col =>22 }), user4.reservations << reservation4, reservation4.flights << flight3

  # reservation5 = Reservation.create({:row => 3; :col =>23 }), user5.reservations << reservation5, reservation5.flights << flight3
