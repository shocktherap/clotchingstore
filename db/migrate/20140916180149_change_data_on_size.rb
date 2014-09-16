class ChangeDataOnSize < ActiveRecord::Migration
  def up
    change_column :sizes, :name, :integer
  end

  def down
    change_column :sizes, :name, :string
  end
end
