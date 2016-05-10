require 'test_helper'

class RenterTest < ActiveSupport::TestCase
   test "validate on setup" do
    r = Renter.new(name: "Stew", rental_id: 1)
    assert(r.valid?, "should be valid")
  end

  test "should be invalid without name" do
    r = Renter.new(name: "Stew", rental_id: 1)
    r.name = nil
    refute(r.valid?, "should be invalid without name")
    assert(r.errors[:name])
  end

  test "should be invalid with duplicate name" do
    r = Renter.new(name: "Stew", rental_id: 1)
    r.save
    dup = r.dup
    refute(dup.valid?, "should not allow a duplicate name")
    assert(dup.errors[:name], "should have an error under :name")
  end 

  test "should be invalid with a duplicate but differently cased name" do
    r = Renter.new(name: "Stew", rental_id: 1)
    r.save
    dup = r.dup
    dup.name.upcase!
    refute(dup.valid?, "should not allow a duplicate name")
    assert(dup.errors[:name], "should have an error under :name")
  end   

  test "should be invalid without rental_id" do
    r = Renter.new(name: "Stew", rental_id: 1)
    r.rental_id = nil
    refute(r.valid?, "should be invalid without rental_id")
    assert(r.errors[:rental_id])
  end
end
