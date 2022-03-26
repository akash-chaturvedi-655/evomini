# frozen_string_literal: true

class Admin < ApplicationRecord
  attr_accessor :name
  belongs_to :user
  has_many :bulletins
  has_many :userlists
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true
  validates :password, presence: true
end
