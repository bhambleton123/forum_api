class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_many :posts
    has_many :comments
    has_many :video_game_threads

    def is_admin?
        return self.user_type == "admin"
    end
end
