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
  end
end
