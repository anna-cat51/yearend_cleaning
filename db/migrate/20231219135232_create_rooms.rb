class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name # 部屋の名前を格納するカラム
      t.references :layout, null: false, foreign_key: true # 間取りに対する外部キー

      t.timestamps
    end
  end
end
