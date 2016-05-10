require 'test_helper'

class RentalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
   post :create, rental: {address: "123 Sesame St."}
   assert_redirected_to rentals_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    r = Rental.create(address: "123 Sesame St.")
    get :show, id: r.id
    assert_response :success
  end

  test "should get update" do
    r = Rental.create(address: "123 Sesame St.")
    patch :update, id: r.id, rental: {address: "2123 Baker St"}
    assert_redirected_to rental_path(assigns(:rental))
  end

  test "should get edit" do
    r = Rental.create(address: "123 Sesame St.")
    get :edit, id: r.id
    assert_response :success
  end

  test "should get destroy" do
    r = Rental.create(address: "123 Sesame St.")
    delete :destroy, id: r.id
    assert_redirected_to rentals_path   
  end

end
