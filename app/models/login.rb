# frozen_string_literal: true

class Login < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true
end
