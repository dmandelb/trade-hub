class CreateDexes < ActiveRecord::Migration[6.0]
  def change
    create_table :dexes do |t|
      t.references :trainer

      t.timestamps
    end
  end
end
