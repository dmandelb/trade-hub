class MakeBaseMonColumnsNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :base_mons, :dex_num, false
    change_column_null :base_mons, :name, false
  end
end
