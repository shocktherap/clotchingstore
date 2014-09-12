class CreateMerk < ActiveRecord::Migration
  def change
    create_table :merks do |t|
      t.string :name
    end
  end
end
