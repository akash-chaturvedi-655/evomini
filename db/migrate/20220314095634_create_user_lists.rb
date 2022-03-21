class CreateUserLists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lists do |t|
      t.string :username
      t.string :subscriber_name
      t.integer :subscriber_id

      t.timestamps
    end
  end
end
