class VideoGamesController < ApplicationController
  def get
    category_id = Category.where(name: params[:category_name]).take.id
    render :json => VideoGame.where(:category_id => category_id).find_all
  end

  def create
    if current_user && current_user.is_admin?
      category_id = Category.where(name: params[:category_name]).take.id
      if !category_id.nil?
        render :json => VideoGame.find_or_create_by(:category_id => category_id, :title => params[:title])
      else
        render :json => "Not a valid category name"
      end
    else
      render :json => "Permission denied"
    end
  end

  def delete
    if current_user && current_user.is_admin?
      category_id = Category.where(name: params[:category_name]).take.id 
      render :json => {:deleted => VideoGame.where(:category_id => category_id, :title => params[:title]).destroy_all}
    else
      render :json => "Permission denied"
    end
  end
end
