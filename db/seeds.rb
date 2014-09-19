# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
load 'db/seeds/product/color_seed.rb'
load 'db/seeds/product/gender_seed.rb'
load 'db/seeds/product/size_seed.rb'

ColorSeed.perform!
GenderSeed.perform!
SizeSeed.perform!
