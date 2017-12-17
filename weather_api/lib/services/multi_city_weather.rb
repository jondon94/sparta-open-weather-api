require 'httparty'
require 'json'

class MultiCityWeather
  include HTTParty

  attr_accessor :multi_city_weather_data

  base_uri 'http://api.openweathermap.org/data/2.5/group?id='

  # city_id_array = ['2633484', '7292321']

  def get_multiple_cities_data(city_id_array)
    @multi_city_weather_data = JSON.parse(self.class.post("#{city_id_array[0]}&units=metric&appid=316505207108df506a37ada56dd72578").body)
  end

  def get_all_city_info
    get_multiple_cities_data(['2633484', '7292321'])
  end
end

y = MultiCityWeather.new
p y.get_multiple_cities_data(['2633484', '7292321'])
# p y.get_all_city_info
