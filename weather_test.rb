require 'minitest/autorun'
require 'minitest/pride'
require './weather.rb'

class Weather

  private def get
    JSON.parse(File.read('data.json'))
  end

end

class WeatherTest < Minitest::Test

  def test_initialize
    assert Weather.new(27701)
  end

  def test_city
    durham = Weather.new(27701)
    assert_equal 'Durham', durham.city
  end

  def test_temp
    durhamtemp = Weather.new(27701)
    assert_equal 64.9, durhamtemp.temp
  end

  def test_humidity
    durhamhumidity = Weather.new(27701)
    assert_equal "32%", durhamhumidity.humidity
  end

  def test_wind
    durhamwind = Weather.new(27701)
    assert_equal 2.0, durhamwind.wind
  end  

end
