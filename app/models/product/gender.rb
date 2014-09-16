module Product
  class Gender < ActiveRecord::Base
    has_many :products, through: :product_genders
  end
end
