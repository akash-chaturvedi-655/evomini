class AddTopicToBulletin < ActiveRecord::Migration[5.2]
  def change
    add_column :bulletins, :topic, :string
  end
end
