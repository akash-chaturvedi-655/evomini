class Userlist < ApplicationRecord
    belongs_to :user
    validates :topic, presence: true
    validates :receipients, presence: true
end
