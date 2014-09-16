# == Schema Information
#
# Table name: categories
#
#  id   :integer          not null, primary key
#  name :string(255)
#

module Product
  class Category < ActiveRecord::Base
    has_many :sub_categories
    has_many :products, through: :sub_categories
  end
end
