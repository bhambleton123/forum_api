class AddVideoGameToVideoGameThreads < ActiveRecord::Migration[6.0]
  def change
    add_reference :video_game_threads, :video_game, null: false, foreign_key: true
  end
end
