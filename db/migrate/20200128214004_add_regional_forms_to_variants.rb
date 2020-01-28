class AddRegionalFormsToVariants < ActiveRecord::Migration[6.0]
  def change
    add_column :variants, :alola?, :boolean, default: false
    add_column :variants, :galarian?, :boolean, default: false
  end
end
