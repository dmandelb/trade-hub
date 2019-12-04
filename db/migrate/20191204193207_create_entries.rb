class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :dex, null: false, foreign_key: true
      t.references :available_mon, null: false, foreign_key: true
      t.boolean :filled?
      t.boolean :available?
      t.integer :priority

      t.timestamps
    end
  end
end
