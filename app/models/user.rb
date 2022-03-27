class User < ApplicationRecord
    has_many :admins
    has_many :subscribers
end
