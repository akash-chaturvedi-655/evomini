class Bulletin < ApplicationRecord
    validates :from, :to, :body, :flag , presence: true
end
