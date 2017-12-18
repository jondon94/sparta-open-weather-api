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

  def get_city_confirm_cod
    get_city_info['cod']
  end

  def get_location_coordinates
    get_city_info.first[1]
  end

  def get_city_weather
    get_city_info['weather']
  end

  def get_city_weather_temp
    get_city_info['main']
  end

  def confirm_all_city_weather
    get_city_weather[0].count
  end

  def get_city_weather_visibility
    get_city_info['visibility']
  end

  def get_city_weather_wind
    get_city_info['wind']
  end

  def get_city_name
    get_city_info['name']
  end
end

x = CurrentWeatherData.new
# p x.get_city_info.class
p x.get_city_info
# p x.get_location_coordinates.class
# p x.get_location_coordinates
# p x.get_city_weather.class
# p x.get_city_weather
# p x.get_city_weather_temp.class
# p x.get_city_weather_temp
# p x.confirm_all_city_weather
# p x.get_all_city_weather.class
# p x.get_city_weather_visibility
# p x.get_city_weather_wind
# p x.get_city_confirm_cod
