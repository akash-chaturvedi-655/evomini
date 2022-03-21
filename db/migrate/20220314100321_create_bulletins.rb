class CreateBulletins < ActiveRecord::Migration[5.2]
  def change
    create_table :bulletins do |t|
      t.string :from
      t.string :body
      t.integer :to
      t.integer :flag

      t.timestamps
    end
  end
end
