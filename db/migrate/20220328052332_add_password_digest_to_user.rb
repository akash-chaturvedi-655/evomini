# frozen_string_literal: true

class AddPasswordDigestToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password, :password_digest
  end
end
