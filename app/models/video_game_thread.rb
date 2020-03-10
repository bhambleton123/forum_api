class VideoGameThread < ApplicationRecord
    has_many :posts
    has_one :video_game
    validates :name, presence: true
end
