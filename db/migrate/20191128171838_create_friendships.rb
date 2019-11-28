class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :trainer, null: false, foreign_key: true
      t.references :friend, null: false
      t.integer :level, null: false, default: 0

      t.timestamps
    end
  end
end
