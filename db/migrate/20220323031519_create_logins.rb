# frozen_string_literal: true

class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins, &:timestamps
  end
end
