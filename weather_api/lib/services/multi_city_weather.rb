require 'httparty'
require 'json'

class MultiCityWeather
  include HTTParty

  attr_accessor :multi_city_weather_data

  base_uri 'http://api.openweathermap.org/data/2.5/group?id='

  # city_id_array = ['2633484', '7292321']

  def get_multiple_cities_data(id)
    # @multi_city_weather_data = JSON.parse(self.class.post({"#{city_id_array}&units=metric&appid=de97c140e54b20f0becf2566bf273a66" => city_id_array}).body)
    @multi_city_weather_data = JSON.parse(self.class.post('/id', body: {"2633484&units=metric&appid=de97c140e54b20f0becf2566bf273a66" => city_id_array}).body)
  end

  def get_all_city_info
    get_multiple_cities_data(2633484)
  end

  def get_city_info_list
    get_all_city_info['list'].first
  end

  def get_cities_coord
    get_city_info_list.first.last
  end

  def method_name

  end
end

y = MultiCityWeather.new
# p y.get_multiple_cities_data(2633484)
p y.get_all_city_info
# p y.get_city_info_list.count
# p y.get_city_info_list
# p y.get_cities_coord
