# frozen_string_literal: true

class Bulletin < ApplicationRecord
  #belongs_to :user
  validates :from, presence: true
  validates :to, presence: true
  validates :body, presence: true
  #validates :flag, presence: true 
end
