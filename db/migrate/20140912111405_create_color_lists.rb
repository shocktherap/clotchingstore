class CreateColorLists < ActiveRecord::Migration
  def change
    create_table :color_lists do |t|
      t.string :name
      t.string :hex

      t.timestamps
    end
  end
end
