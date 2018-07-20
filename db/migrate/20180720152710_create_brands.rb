class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |b|
      b.string :name
      b.string :price
    end
  end
end
