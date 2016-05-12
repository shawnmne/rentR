require 'test_helper'

class RentersControllerTest < ActionController::TestCase
  test "should get index" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    get :index
    assert_response :success
  end

  test "should get create" do
   @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
   login_user(user=@user, route=login_path)    
   post :create, renter: {name: "Stew", rental_id: 1}
   assert_redirected_to renters_path
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
    r = Renter.create(name: "Stew", rental_id: 1)
    get :show, id: r.id
    assert_response :success
  end

  test "should get update" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Renter.create(name: "Stew", rental_id: 1)
    patch :update, id: r.id, renter: {name: "Freddy"}
    assert_redirected_to renter_path(assigns(:renter))
  end

  test "should get edit" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Renter.create(name: "Stew", rental_id: 1)
    get :edit, id: r.id
    assert_response :success
  end

  test "should get destroy" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    r = Renter.create(name: "Stew", rental_id: 1)
    delete :destroy, id: r.id
    assert_redirected_to renters_path
  end

end
