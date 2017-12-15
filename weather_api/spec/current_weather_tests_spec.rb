require 'spec_helper'

describe CurrentWeatherAPI do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @citycode = CurrentWeatherAPI.new.current_weather
      @citycode.current_weather("London")
    end

  end
end
