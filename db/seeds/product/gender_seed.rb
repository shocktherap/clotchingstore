class GenderSeed

  def self.perform!
    ActiveRecord::Base.transaction do
      ['Male', 'Female'].each do |hash|
        Product::Gender.find_or_create_by name: hash
      end
    end
  end
end
