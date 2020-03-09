class UsersController < ApplicationController
  def get_user
    render :json => current_user
  end

  def create
    @user = User.new();
    @user.email = params[:email]
    @user.password = params[:password]
    @user.user_type = "standard"
    @user.save

    if @user.id.nil?
      render :json => "User already exists"
    else
      render :json => @user
    end
  end
end
