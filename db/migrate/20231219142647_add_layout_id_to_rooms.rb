class AddLayoutIdToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :layout_id, :bigint
    add_foreign_key :rooms, :layouts
  end
end
