require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    get :new
    assert_response :success
  end

  test "should get show" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)    
    get :show, id: @user.id
    assert_response :success
  end

  test "should get index" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)
    get :index
    assert_response :success
  end

  test "should get create" do
    @user = User.create!(email: "david@poohat.com", password: "biggun", password_confirmation: "biggun")
    login_user(user=@user, route=login_path)
    post :create, user: {email: "gloria@poohat.com", password: "biggun", password_confirmation: "biggun"}
    assert_redirected_to users_path
  end

end
