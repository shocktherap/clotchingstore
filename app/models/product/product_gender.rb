module Product
  class ProductGender < ActiveRecord::Base
    has_many :genders, through: :product_genders
    has_many :product_genders
  end
end
