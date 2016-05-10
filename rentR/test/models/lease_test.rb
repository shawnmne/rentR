require 'test_helper'

class LeaseTest < ActiveSupport::TestCase
  test "validate on setup" do
    l = Lease.new(rent_amount: "$1000", start_date: (2016-1-1), end_date: (2016-6-30), rental_id: 1)
    assert(l.valid?, "should be valid")
  end

   test "should be invalid without rent_amount" do
     l = Lease.new(rent_amount: "$1000", start_date: '2016-1-1', end_date: (2016-6-30), rental_id: 1)
     l.rent_amount = nil
     refute(l.valid?, "should be invalid without rent_amount")
     assert(l.errors[:rent_amount])
   end

   test "should be invalid without start_date" do
     l = Lease.new(rent_amount: "$1000", start_date: (2016-1-1), end_date: (2016-6-30), rental_id: 1)
     l.start_date = nil
     refute(l.valid?, "should be invalid without start_date")
     assert(l.errors[:start_date])
   end

   test "should be invalid without end_date" do
     l = Lease.new(rent_amount: "$1000", start_date: (2016-1-1), end_date: (2016-6-30), rental_id: 1)
     l.end_date = nil
     refute(l.valid?, "should be invalid without end_date")
     assert(l.errors[:end_date])
   end

   test "should be invalid without rental_id" do
     l = Lease.new(rent_amount: "$1000", start_date: (2016-1-1), end_date: (2016-6-30), rental_id: 1)
     l.rental_id = nil
     refute(l.valid?, "should be invalid without rental_id")
     assert(l.errors[:end_date])
   end    
end
