class AddIsTemplateToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :is_template, :boolean
  end
end
