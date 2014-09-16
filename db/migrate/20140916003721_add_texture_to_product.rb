class AddTextureToProduct < ActiveRecord::Migration
  def change
    add_column :products, :texture, :string
  end
end
