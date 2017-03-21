require './weather.rb'

puts "Want the forecast? Just enter your zip code."
zip = gets.chomp

a = Weather.new(zip)

a.weather
