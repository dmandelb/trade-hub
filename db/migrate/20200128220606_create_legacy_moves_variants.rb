class CreateLegacyMovesVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :legacy_moves_variants do |t|
      t.references :variants
      t.references :legacy_moves
      
      t.timestamps
    end
  end
end
