class CreateLoginHomePage < ActiveRecord::Migration[5.2]
  def change
    create_table :login_home_pages do |t|
      t.string :username
      t.string :password
      t.timestamps
    end
  end
end
