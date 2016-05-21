# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rental.create(address: "1315 Garfield", apartment: "")
Rental.create(address: "1321 Garfield", apartment: "")
Rental.create(address: "2127 E St.", apartment: "Apt 1")
Rental.create(address: "2127 E St.", apartment: "Apt 2")

Renter.create(name: "Ian McCullough", phone: "555-435-5474", rental_id: 1)
Renter.create(name: "P.J. Harvey", phone: "555-739-9475", rental_id: 2)
Renter.create(name: "Kim Gordon", phone: "555-739-9475", email: "grlpwr@yahoo.com", rental_id: 2)
Renter.create(name: "Courtney Love", phone: "555-739-9475", rental_id: 2)
Renter.create(name: "David Lowery", email: "cvb@yahoo.com", rental_id: 3)
Renter.create(name: "Frank Black", email: "pdust@yahoo.com", phone: "555-546-7897", rental_id: 4)
Renter.create(name: "J Mascis", email: "djun@yahoo.com", phone: "555-448-7664", rental_id: 4)

Lease.create(start_date: '2015-1-1', end_date: '2015-6-30', rent_amount: "$350", rental_id: 1)
Lease.create(start_date: '2015-7-1', end_date: '2015-12-31', rent_amount: "$350", rental_id: 1)
Lease.create(start_date: '2016-1-1', end_date: '2016-6-30', rent_amount: "$400", rental_id: 1)
Lease.create(start_date: '2016-3-1', end_date: '2016-8-31', rent_amount: "$550", rental_id: 2)
Lease.create(start_date: '2015-1-1', end_date: '2015-6-30', rent_amount: "$450", rental_id: 3)
Lease.create(start_date: '2015-7-1', end_date: '2015-12-31', rent_amount: "$450", rental_id: 3)
Lease.create(start_date: '2016-1-1', end_date: '2016-6-30', rent_amount: "$450", rental_id: 3)
Lease.create(start_date: '2016-2-1', end_date: '2016-7-31', rent_amount: "$425", rental_id: 4)

