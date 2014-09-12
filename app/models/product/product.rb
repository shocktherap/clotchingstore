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
#  color_id          :integer
#  sub_category_id   :integer
#  unit_price        :integer
#  unit_cost         :integer
#  tax               :integer
#

module Product
  class Product < ActiveRecord::Base

  end
end
