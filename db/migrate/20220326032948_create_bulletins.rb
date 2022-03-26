class CreateBulletins < ActiveRecord::Migration[5.2]
  def change
    create_table :bulletins do |t|
      t.string :from
      t.string :to
      t.text :body
      t.integer :flag
    end
  end
end
