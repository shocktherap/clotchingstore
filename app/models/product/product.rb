# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  code              :string(255)
#  name              :string(255)
#  keywords          :string(255)
#  short_description :string(255)
#  description       :text
#  active            :boolean
#  height            :integer
#  width             :integer
#  weight            :integer
#  merk_id           :integer
#  sub_category_id   :integer
#  unit_price        :integer
#  unit_cost         :integer
#  tax               :integer
#

module Product
  class Product < ActiveRecord::Base
    belongs_to :sub_category
    belongs_to :merk

    has_many :discounts
    has_many :colors
    has_many :reviews

    has_many :sizes, through: :product_sizes
    has_many :product_sizes

    has_many :genders, through: :product_genders
    has_many :product_genders
  end
end
