class CreateProductGender < ActiveRecord::Migration
  def change
    create_table :product_genders do |t|
      t.integer :gender_id
      t.integer :product_id

      t.timestamps
    end
  end
end
