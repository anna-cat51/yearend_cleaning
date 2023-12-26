class AddOnDeleteCascadeToChecklists < ActiveRecord::Migration[7.0]
  def change
    # まず既存の外部キー制約を削除します
    remove_foreign_key :checklists, :rooms

    # 新しい外部キー制約を追加します（ここではon_delete: :cascadeを指定）
    add_foreign_key :checklists, :rooms, on_delete: :cascade
  end
end
