# == Schema Information
#
# Table name: categories
#
#  id   :integer          not null, primary key
#  name :string(255)
#

module Product
  class Category < ActiveRecord::Base
    has_many :subcategories
    has_many :products, through: :subcategories
  end
end
