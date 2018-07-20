class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |s|
      s.string :name
    end
  end
end
