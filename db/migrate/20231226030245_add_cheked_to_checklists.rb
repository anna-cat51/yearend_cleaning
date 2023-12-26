class AddChekedToChecklists < ActiveRecord::Migration[7.0]
  def change
    add_column :checklists, :checked, :boolean
  end
end
