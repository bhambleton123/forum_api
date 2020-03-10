class CommentsController < ApplicationController
  def index
    comments = Comment.where(:post_id => params[:id])
    render :json => comments
  end

  def create
    comment = Comment.create(:content => params[:content], :user_id => current_user.id, :post_id => params[:id])
    render :json => comment
  end

  def destroy
    comment = Comment.find(params[:id])
    if current_user.id == comment.user_id || current_user.is_admin?
      render :json => {:deleted => comment.destroy}
    else
      render :json => "User either does not own post or is not an admin"
    end
  end
end
