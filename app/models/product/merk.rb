# == Schema Information
#
# Table name: merks
#
#  id   :integer          not null, primary key
#  name :string(255)
#

module Product
  class Merk < ActiveRecord::Base
    has_many :products

    validates :name, uniqueness: true
  end
end
