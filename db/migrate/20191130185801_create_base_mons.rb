class CreateBaseMons < ActiveRecord::Migration[6.0]
  def change
    create_table :base_mons do |t|
      t.string :name
      t.integer :dex_num

      t.timestamps
    end
  end
end
