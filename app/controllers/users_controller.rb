class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def create
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :gender, :birth_date)
  end
end
