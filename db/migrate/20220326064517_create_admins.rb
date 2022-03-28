# frozen_string_literal: true

class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :password
    end
  end
end
