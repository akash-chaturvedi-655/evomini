class AddUserRefToUserlists < ActiveRecord::Migration[5.2]
  def change
    add_reference :userlists, :user, foreign_key: true
  end
end
