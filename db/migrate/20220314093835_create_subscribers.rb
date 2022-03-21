# frozen_string_literal: true

class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :userId
      t.string :email
      t.string :password
      t.datetime :last_login_date
      t.string :phone

      t.timestamps
    end
  end
end
