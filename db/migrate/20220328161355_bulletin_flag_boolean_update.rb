class BulletinFlagBooleanUpdate < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:bulletins, :flag, nil)
  end
end
