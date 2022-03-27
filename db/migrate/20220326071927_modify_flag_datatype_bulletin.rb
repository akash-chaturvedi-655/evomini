class ModifyFlagDatatypeBulletin < ActiveRecord::Migration[5.2]
  def change
      change_column :bulletins, :flag, :boolean, default: false
  end
end
