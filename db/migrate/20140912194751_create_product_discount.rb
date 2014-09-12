class CreateProductDiscount < ActiveRecord::Migration
  def change
    create_table :product_discounts do |t|
      t.integer :discount
      t.integer :product_id
      t.integer :discount_price
      t.datetime :expires_in

      t.timestamps
    end
  end
end
