class CreateSize < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end
end
