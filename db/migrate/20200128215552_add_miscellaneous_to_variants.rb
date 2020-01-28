class AddMiscellaneousToVariants < ActiveRecord::Migration[6.0]
  def change
    add_column :variants, :miscellaneous, :string
  end
end
