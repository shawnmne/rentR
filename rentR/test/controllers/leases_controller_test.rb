require 'test_helper'

class LeasesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

   test "should get create" do
     post :create, lease: {rent_amount: "$1000", start_date: '2016-1-1', end_date: '2016-6-30', rental_id: 1}
     assert_redirected_to leases_path
   end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    l = Lease.create(rent_amount: "$1000", start_date: '2016-1-1', end_date: '2016-6-30', rental_id: 1)
    get :show, id: l.id
    assert_response :success
  end

  test "should get update" do
    l = Lease.create(rent_amount: "$1000", start_date: '2016-1-1', end_date: '2016-6-30', rental_id: 1)
    patch :update, id: l.id, lease: {rent_amount: "$1200"}
    assert_redirected_to lease_path(assigns(:lease))
  end

  test "should get edit" do
    l = Lease.create(rent_amount: "$1000", start_date: '2016-1-1', end_date: '2016-6-30', rental_id: 1)
    get :edit, id: l.id
    assert_response :success
  end

  test "should get destroy" do
    l = Lease.create(rent_amount: "$1000", start_date: '2016-1-1', end_date: '2016-6-30', rental_id: 1)
    delete :destroy, id: l.id
    assert_redirected_to leases_path
  end

end
