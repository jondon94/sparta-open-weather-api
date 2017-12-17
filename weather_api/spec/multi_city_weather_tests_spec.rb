require 'spec_helper'

describe CurrentWeatherInfo do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @citiescode = MultiCityWeather.new
    end

    it "should have the information eachof the cities as a Hash" do
      expect(@citiescode.get_all_city_info).to be_kind_of(Hash)
    end

  end
end
