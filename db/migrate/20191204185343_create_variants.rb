class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.boolean :shiny?, null: false, default: false
      t.boolean :lucky?, null: false, default: false
      t.boolean :shadow?, null: false, default: false
      t.string :gender
    end
  end
end
