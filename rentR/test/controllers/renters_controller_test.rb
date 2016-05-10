require 'test_helper'

class RentersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
   post :create, renter: {name: "Stew", rental_id: 1}
   assert_redirected_to renters_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    r = Renter.create(name: "Stew", rental_id: 1)
    get :show, id: r.id
    assert_response :success
  end

  test "should get update" do
    r = Renter.create(name: "Stew", rental_id: 1)
    patch :update, id: r.id, renter: {name: "Freddy"}
    assert_redirected_to renter_path(assigns(:renter))
  end

  test "should get edit" do
    r = Renter.create(name: "Stew", rental_id: 1)
    get :edit, id: r.id
    assert_response :success
  end

  test "should get destroy" do
    r = Renter.create(name: "Stew", rental_id: 1)
    delete :destroy, id: r.id
    assert_redirected_to renters_path
  end

end
