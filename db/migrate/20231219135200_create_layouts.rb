class CreateLayouts < ActiveRecord::Migration[7.0]
  def change
    create_table :layouts do |t|
      t.string :name # 部屋の名前を格納するカラム
      t.timestamps
    end
  end
end

