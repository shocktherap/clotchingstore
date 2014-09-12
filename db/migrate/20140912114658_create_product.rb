class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :keywords
      t.string :short_description
      t.text :description
      t.boolean :active
      t.integer :height
      t.integer :width
      t.integer :weight
      t.integer :merk_id
      t.integer :color_id
      t.integer :sub_category_id
      t.integer :unit_price
      t.integer :unit_cost
      t.integer :tax
    end
  end
end
