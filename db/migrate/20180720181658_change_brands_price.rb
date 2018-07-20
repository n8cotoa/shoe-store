class ChangeBrandsPrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :brands, :price

    add_column :brands, :price, :numeric, :precision => 8, :scale => 2
  end
end
