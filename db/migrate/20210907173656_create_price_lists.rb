class CreatePriceLists < ActiveRecord::Migration[6.1]
  def change
    create_table :price_lists do |t|
      t.string :vendor
      t.string :product
      t.decimal :price, precision: 8, scale: 2 

      t.timestamps
    end
  end
end
