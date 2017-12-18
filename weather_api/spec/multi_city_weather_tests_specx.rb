require 'spec_helper'

describe CurrentWeatherInfo do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @multi_city_weather_data = ['2633484', '7292321']
      @citiescode = MultiCityWeather.new.multi_city_weather
      # .multi_city_weather_data
      @citiescode.get_multiple_cities(@multi_city_weather_data)
    end

    it "should have the information eachof the cities as a Hash" do
      expect(@citiescode.get_all_city_info).to be_kind_of(Hash)
    end

    it "should have a hash called list with 10 elements in it" do
      expect(@citiescode.get_city_info_list.length).to eq(10)
    end

    it "should have 2 elemnst for the coord parameter" do
      expect(@citiescode.get_cities_coord.count).to eq(2)
    end

    it "should have float values for lat and long" do
      expect(@citiescode.get_cities_coord['lon'] && @citiescode.get_cities_coord['lat']).to be_kind_of((Float) || (Integer))
    end

  end
end
