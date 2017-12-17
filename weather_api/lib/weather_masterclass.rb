require_relative 'services/current_weather'
require_relative 'services/multi_city_weather'

class CurrentWeatherInfo

  def current_weather_info
    CurrentWeatherData.new
  end

  def multi_city_info
    MultiCityWeather.new
  end

end
