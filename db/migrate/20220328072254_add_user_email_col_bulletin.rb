# frozen_string_literal: true

class AddUserEmailColBulletin < ActiveRecord::Migration[5.2]
  def change
    add_column :bulletins, :user_email, :string
  end
end
