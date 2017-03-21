require 'httparty'

class Weather

  def initialize(zip)
    @zip = zip
    @conditions = get
  end

  def weather
    puts "The temperature in #{city} is #{temp} degrees, with #{humidity} humidity, and winds are #{wind} mph."
  end

  def city
    @conditions['current_observation']['display_location']['city']
  end

  def temp
    @conditions['current_observation']['temp_f']
  end

  def humidity
    @conditions['current_observation']['relative_humidity']
  end

  def wind
    @conditions['current_observation']['wind_mph']
  end

  def get
    HTTParty.get("http://api.wunderground.com/api/#{apikey}/conditions/q/#{@zip}.json")
  end

  def apikey
    JSON.parse(File.read('api_key.json'))['apikey']
  end

end
