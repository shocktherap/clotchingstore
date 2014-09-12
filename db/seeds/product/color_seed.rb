class ColorSeed
  COLOR_YML = YAML.load(File.read('db/seeds/yml/color.yml'))

  def self.perform!
    ActiveRecord::Base.transaction do
      COLOR_YML.first.each do |hash|
        if hash != 'color'
          hash.each do |color_params|
            Product::ColorList.create color_params
          end
        end
      end
    end
  end
end
