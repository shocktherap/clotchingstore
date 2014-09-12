# == Schema Information
#
# Table name: sub_categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#

module Product
  class SubCategory < ActiveRecord::Base
    belongs_to :category
    has_many :products
  end
end
