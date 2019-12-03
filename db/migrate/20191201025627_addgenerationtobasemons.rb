class Addgenerationtobasemons < ActiveRecord::Migration[6.0]
  def change
    add_column :base_mons, :generation, :integer
  end
end
