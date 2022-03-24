class Login < ApplicationRecord
    belongs_to :admin
    belongs_to :subscriber
    validates :username, presence: true
    validates :password, presence: true
end
