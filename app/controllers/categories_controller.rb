class CategoriesController < ApplicationController
  def get
  end

  def create
    if  current_user && current_user.is_admin?
      render :json => "You're an admin"
    else
      render :json => "Permission denied"
    end
  end

  def destroy
  end
end
