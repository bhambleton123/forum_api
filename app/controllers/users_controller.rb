class UsersController < ApplicationController
  def create
    @user = User.new();
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save

    if @user.id.nil?
      render :json => "User already exists"
    else
      render :json => @user
    end
  end
end
