class VideoGameThreadsController < ApplicationController
  def get
    video_game_id = VideoGame.where(:title => params[:title]).take.id
    render :json => VideoGameThread.where(:video_game_id => video_game_id).find_all
  end

  def create
    video_game_id = VideoGame.where(:title => params[:title]).take.id
    thread = VideoGameThread.create(:name => params[:name], :video_game_id => video_game_id, :user_id => current_user.id)
    render :json => thread
  end

  def destroy
    video_game_thread = VideoGameThread.find(params[:id])
    if current_user.id == video_game_thread.user_id || current_user.is_admin?
      render :json => {:deleted => video_game_thread.destroy}
    else
      render :json => "Thread does not belong to user or user does not have admin permissions"
    end
  end
end
