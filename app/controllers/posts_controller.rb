class PostsController < ApplicationController
  def index
    posts = Post.where(:video_game_thread_id => params[:thread_id]).limit(10).offset((params[:page].to_i-1)*10)
    render :json => posts
  end

  def create
    post = Post.create(:content => params[:content], :user_id => current_user.id, :video_game_thread_id => params[:thread_id])
    render :json => post
  end

  def destroy
    post = Post.find(params[:id])
    if current_user.id == post.user_id || current_user.is_admin?
      render :json => {:deleted => post.destroy}
    else
      render :json => "User either does not own post or is not an admin"
    end
  end
end
