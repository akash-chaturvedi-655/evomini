# frozen_string_literal: true

class Login < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 50 }
  validates :password, presence: true, length: { minimum: 8, maximum: 20 }
end
