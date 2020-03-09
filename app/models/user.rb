class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true

    def is_admin?
        if self.user_type == "admin"
            return true
        else
            return false
        end
    end
end
