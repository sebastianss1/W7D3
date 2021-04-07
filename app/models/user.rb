class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true 
    validates :password_digest, presence: true 
    validates :password, length: {minimum: 6, allow_nil: true }

        has_many :goals,
        foreign_key: :user_id,
        class_name: :Goal


    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)

        if user && is_password?(password)
            user
        else 
            nil
        end 
    end 

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end 


    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(@password)
    end 

    def password 
        @password 
    end

end 