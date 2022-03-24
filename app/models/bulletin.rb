# frozen_string_literal: true

class Bulletin < ApplicationRecord
    belongs_to :subscriber
    belongs_to :admin
    validates :from, presence: true
    validates :to, presence: true
    validates :body, presence: true
    validates :subject, presence: true
end
