require 'httparty'
require 'json'

class CurrentWeatherData
  include HTTParty

  attr_accessor :current_weather_data

  # base_uri 'http://api.openweathermap.org/data/2.5/forecast?id='
  base_uri 'http://api.openweathermap.org/data/2.5/weather?q='

  def get_city(city)
    @current_weather_data = JSON.parse(self.class.get("#{city}&appid=316505207108df506a37ada56dd72578").body)
  end

  def get_city_info
    get_city('wrexham')
  end

  def get_location_coordinates
    # get_city_info.first - Array
    get_city_info.first[1]
  end

  def get_city_weather_info
    get_city_info['weather']
  end

end

x = CurrentWeatherData.new
# p x.get_city_info.class
# p x.get_location_coordinates.class
# p x.get_location_coordinates[1].class
# p x.get_city_weather_info.class
