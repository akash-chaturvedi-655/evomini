class CreateUserlists < ActiveRecord::Migration[5.2]
  def change
    create_table :userlists do |t|
   #  t.integer :user_id
      t.string :topic
      t.string :receipients

      t.timestamps
    end
  end
end
