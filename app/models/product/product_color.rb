# == Schema Information
#
# Table name: product_colors
#
#  id         :integer          not null, primary key
#  product_id :integer
#  color_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

module Product
  class ProductColor < ActiveRecord::Base
    belongs_to :product
    belongs_to :product_color
  end
end
