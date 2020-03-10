class AddUserToVideoGameThreads < ActiveRecord::Migration[6.0]
  def change
    add_reference :video_game_threads, :user, null: false, foreign_key: true
  end
end
