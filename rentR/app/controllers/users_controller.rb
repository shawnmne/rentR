class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def index
  	@user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "saved"
    else
      render :new
    end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
