class CreateProductReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer  :product_id
      t.text     :comment
      t.integer  :user_id
      t.integer  :rate
      t.boolean  :like

      t.timestamps
    end
  end
end
