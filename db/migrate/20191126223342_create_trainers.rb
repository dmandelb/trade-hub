class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :trainer_name, null: false
      t.string :email, null: false
      t.boolean :display_email, default: false
      t.text :contact_info
      t.string :location
      t.string :team

      t.timestamps
    end
  end
end
