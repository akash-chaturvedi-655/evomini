# frozen_string_literal: true

class Admin < ApplicationRecord
  has_many :bulletins
  has_many :userlists
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true
end
