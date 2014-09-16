class SizeSeed
  SIZE_YML = (26..34)

  def self.perform!
    ActiveRecord::Base.transaction do
      SIZE_YML.each do |hash|
        Product::Size.find_or_create_by name: hash
      end
    end
  end
end
