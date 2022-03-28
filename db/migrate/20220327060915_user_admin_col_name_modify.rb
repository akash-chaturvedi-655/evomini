# frozen_string_literal: true

class UserAdminColNameModify < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :isAdmin, :admin
  end
end
