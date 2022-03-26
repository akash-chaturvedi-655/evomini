class User < ApplicationRecord
    has_many :admin
    has_many :subscriber
end
