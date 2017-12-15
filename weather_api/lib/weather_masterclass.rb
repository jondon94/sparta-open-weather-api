require_relative 'services/current_weather'

class CurrentWeatherInfo

  def current_weather_info
    CurrentWeatherData.new
  end

end
