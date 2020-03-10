class VideoGame < ApplicationRecord
    has_one :category
    has_many :video_game_threads
    validates :title, presence: true, uniqueness: true
end
