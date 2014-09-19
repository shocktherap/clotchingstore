module Product
  class Size < ActiveRecord::Base
    has_many :products, through: :product_size
    has_many :product_size

    validates :name, uniqueness: true
  end
end
