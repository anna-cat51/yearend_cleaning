class CreateChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :checklists do |t|
      t.string :name # 部屋の名前を格納するカラム
      t.references :room, null: false, foreign_key: true # 間取りに対する外部キー

      t.timestamps
    end
  end
end
