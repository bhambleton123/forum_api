class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render :json => user
    else
      render :json => "Wrong email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    render :json => "logged out"
  end
end
