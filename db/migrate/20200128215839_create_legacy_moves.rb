class CreateLegacyMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :legacy_moves do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
