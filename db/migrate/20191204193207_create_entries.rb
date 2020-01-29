class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :dex, null: false, foreign_key: true
      t.references :available_mon, null: false, foreign_key: true
      t.boolean :filled, null: false, default: false
      t.boolean :available, null: false, default: false
      t.integer :priority, default: 0

      t.timestamps
    end
  end
end
