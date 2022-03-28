class User < ApplicationRecord
    has_many :admins
    has_many :subscribers
    has_secure_password
end
