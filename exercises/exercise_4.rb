require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

s = Store.new
s.name = "Burnaby"
s.annual_revenue = 300000
s.mens_apparel = true
s.womens_apparel = true
s.save

s = Store.new
s.name = "Richmond"
s.annual_revenue = 1260000
s.mens_apparel = false
s.womens_apparel = true
s.save

s = Store.new
s.name = "Gastown"
s.annual_revenue = 190000
s.mens_apparel = true
s.womens_apparel = false
s.save

s = Store.new
s.name = "Surrey"
s.annual_revenue = 224000
s.mens_apparel = false
s.womens_apparel = true
s.save

s = Store.new
s.name = "Whistler"
s.annual_revenue = 1900000
s.mens_apparel = true
s.womens_apparel = false
s.save

s = Store.new
s.name = "Yaletown"
s.annual_revenue = 430000
s.mens_apparel = true
s.womens_apparel = true
s.save


# puts @stores = Store.where(mens_apparel: true)
# @stores.each do |store|
#   puts store.name
# end


@stores = Store.where(womens_apparel: true)
@stores.each do |store|
  if store.annual_revenue < 1000000
    puts store.name
  end
end



