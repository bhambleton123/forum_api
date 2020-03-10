class AddVideoGameThreadToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :video_game_thread, null: false, foreign_key: true
  end
end
