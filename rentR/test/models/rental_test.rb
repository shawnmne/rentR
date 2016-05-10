require 'test_helper'

class RentalTest < ActiveSupport::TestCase
  test "validate on setup" do
    r = Rental.new(address: "123 Sesame St.")
    assert(r.valid?, "should be valid")
  end

  test "should be invalid without text" do
    r = Rental.new(address: "123 Sesame St.")
    r.address = nil
    refute(r.valid?, "should be invalid without address")
    assert(r.errors[:address])
  end
end
