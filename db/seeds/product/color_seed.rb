class ColorSeed
  COLOR_YML = YAML.load(File.read('db/seeds/yml/color.yml'))

  def self.perform!
    ActiveRecord::Base.transaction do
      COLOR_YML.first.each do |hash|
        hash.each do |color_params|
          Product::ColorList.find_or_create_by color_params
        end if hash != 'color'
      end
    end
  end
end
