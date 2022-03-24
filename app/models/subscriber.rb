# frozen_string_literal: true

class Subscriber < ApplicationRecord
    has_many :bulletins
    has_many :userlists
    validates :name, presence: true
    validates :userId, presence: true
    validates :phone, presence: true, length: { minimum: 6 }
    validates :email, presence: true
end
