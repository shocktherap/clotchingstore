# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  product_id :integer
#  comment    :text
#  user_id    :integer
#  rate       :integer
#  like       :boolean
#  created_at :datetime
#  updated_at :datetime
#

module Product
  class Review < ActiveRecord::Base
    belongs_to :product
  end
end
