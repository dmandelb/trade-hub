class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.boolean :shiny?
      t.boolean :lucky?
      t.boolean :shadow?
      t.string :gender
    end
  end
end
