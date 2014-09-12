# == Schema Information
#
# Table name: color_lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  hex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

module Product
  class ColorList < ActiveRecord::Base
    validates :hex, uniqueness: true

    has_many :product_colors
    has_many :products,  through: :product_colors
  end
end
