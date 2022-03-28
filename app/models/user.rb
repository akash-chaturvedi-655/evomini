# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true, length: { minimum: 2, maximum: 25 }
  validates :password, presence: true, length: { minimum: 4, maximum: 20 }
  has_secure_password
  has_many :bulletins
end
