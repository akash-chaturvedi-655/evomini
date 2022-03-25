# frozen_string_literal: true

class UserList < ApplicationRecord
  belongs_to :subscriber
  belongs_to :admin
  validates :name, presence: true
end
