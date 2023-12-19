class CreateLayoutRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :layout_rooms do |t|
      t.references :layout, index: true, null: false
      t.references :room, index: true, null: false
      t.timestamps
    end
  end
end
