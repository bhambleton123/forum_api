class CategoriesController < ApplicationController
  def index
    render :json => Category.all
  end

  def get
    render :json => Category.find(params[:id])
  end

  def create
    if  current_user && current_user.is_admin?
      @category = Category.create(:name => params[:name])
      render :json => @category
    else
      render :json => "Permission denied"
    end
  end

  def destroy
    if current_user && current_user.is_admin?
      @category = Category.where(name: params[:name]).destroy_all
      render :json => {:destroyed => @category}
    else
      render :json => "Permission denied"
    end
  end
end
