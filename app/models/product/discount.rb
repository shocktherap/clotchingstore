module Product
  class Discount < ActiveRecord::Base
    belongs_to :product
  end
end
