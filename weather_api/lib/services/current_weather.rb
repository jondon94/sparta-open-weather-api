require 'httparty'
require 'json'

class CurrentWeatherData
  include HTTParty

  attr_accessor :current_weather_data

  # base_uri 'http://api.openweathermap.org/data/2.5/forecast?id='
  base_uri 'http://api.openweathermap.org/data/2.5/weather?q='

  def get_weather_location(city)
    @current_weather_data = JSON.parse(self.class.get("#{city}&appid=316505207108df506a37ada56dd72578").body)
  end



  def get_location
    @current_weather_data['coord']
  end

end

x = CurrentWeatherData.new
p x.get_weather_location('wrexham')
