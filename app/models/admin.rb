# frozen_string_literal: true

class Admin < ApplicationRecord
  validates :name, presence: true
end
