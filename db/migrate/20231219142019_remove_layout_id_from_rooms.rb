class RemoveLayoutIdFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :layout_id, :bigint
  end
end
