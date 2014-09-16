class SizeSeed
  SIZE_YML = YAML.load(File.read('db/seeds/yml/size.yml'))

  def self.perform!
    ActiveRecord::Base.transaction do
      SIZE_YML.first.each do |hash|
        hash.each do |size_params|
          Product::Size.create size_params
        end if hash != 'size'
      end
    end
  end
end
