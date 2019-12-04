class CreateAvailableMons < ActiveRecord::Migration[6.0]
  def change
    create_table :available_mons do |t|
      t.references :variant, null: false, foreign_key: true
      t.references :base_mon, null: false, foreign_key: true
    end
  end
end
