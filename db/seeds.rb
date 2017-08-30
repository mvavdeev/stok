# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(:name => "Grey and White Cat", :description => "This is an adorable grey and white cat, peering to the right.", :image_url => "cat05.jpg", :color => "grey/white", :price => 55.44)

Product.create(:name => "Blue-Eyed Orange Cat", :description => "This is an adorable orange cat with blue eyes.", :image_url => "cat01.jpg", :color => "orange", :price => 23.74)

Product.create(:name => "Orange and White Cat", :description => "This is an adorable orange and white tabby with green eyes.", :image_url => "cat02.jpg", :color => "orange/white", :price => 12.98)

Product.create(:name => "Fluffy White Cat", :description => "This is an adorable fluffy white cat with blue eyes.", :image_url => "cat03.jpg", :color => "white", :price => 22.87)

Product.create(:name => "Blue-Eyed Gray Cat", :description => "This is an adorable grey cat with blue eyes.", :image_url => "cat04.jpg", :color => "grey", :price => 5.87)
