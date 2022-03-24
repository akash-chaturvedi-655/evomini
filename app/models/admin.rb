# frozen_string_literal: true

class Admin < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2}
  validates :email, presence: true
end
