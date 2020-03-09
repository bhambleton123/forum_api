class CreateVideoGameThreads < ActiveRecord::Migration[6.0]
  def change
    create_table :video_game_threads do |t|
      t.string :name

      t.timestamps
    end
  end
end
