class AddUserIdToRoomsAndChecklists < ActiveRecord::Migration[7.0]
  def change
    add_reference :rooms, :user, foreign_key: true
    add_reference :checklists, :user, foreign_key: true
  end
end
