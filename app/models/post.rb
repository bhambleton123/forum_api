class Post < ApplicationRecord
    has_one :user
    has_one :video_game_thread
    has_many :comments
end
