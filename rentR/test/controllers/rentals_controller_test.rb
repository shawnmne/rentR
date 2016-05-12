require 'test_helper'

class RentalsControllerTest < ActionController::TestCase
  test "should get index" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    get :index
    assert_response :success
  end

  test "should get create" do
   @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
   login_user(user=@user, route=login_path)    
   post :create, rental: {address: "123 Sesame St."}
   assert_redirected_to rentals_path
  end

  test "should get new" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    get :new
    assert_response :success
  end

  test "should get show" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Rental.create(address: "123 Sesame St.")
    get :show, id: r.id
    assert_response :success
  end

  test "should get update" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Rental.create(address: "123 Sesame St.")
    patch :update, id: r.id, rental: {address: "2123 Baker St"}
    assert_redirected_to rental_path(assigns(:rental))
  end

  test "should get edit" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Rental.create(address: "123 Sesame St.")
    get :edit, id: r.id
    assert_response :success
  end

  test "should get destroy" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Rental.create(address: "123 Sesame St.")
    delete :destroy, id: r.id
    assert_redirected_to rentals_path   
  end

end
