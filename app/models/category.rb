class Category < ApplicationRecord
    has_many :video_games
    validates :name, presence: true, uniqueness: true
end
