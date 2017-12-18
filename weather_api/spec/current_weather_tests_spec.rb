require 'spec_helper'

describe CurrentWeatherInfo do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @citycode = CurrentWeatherData.new
    end

    it "should have the information of the city as a Hash" do
      expect(@citycode.get_city_info).to be_kind_of(Hash)
    end

    it "should have a successful get request code of 200" do
      expect(@citycode.get_city_confirm_cod).to eq(200)
    end

    it "should have the coordinates of the city in a Hash" do
      expect(@citycode.get_location_coordinates).to be_kind_of(Hash)
    end

    it "should have an array of information concerning weather" do
      expect(@citycode.get_city_weather).to be_kind_of(Array)
    end

    it "should have an array with 2 elements in it about weather" do
      expect(@citycode.get_city_weather.length).to eq(1)
    end

    it "should have a hash about the local temperature" do
      expect(@citycode.get_city_weather_temp).to be_kind_of(Hash)
    end

    it "should have a hash with 5 elements about the local temperature" do
      expect(@citycode.get_city_weather_temp.count).to eq(5)
    end

    it "should have a parameter called visibility which contains an integer" do
      expect(@citycode.get_city_weather_visibility).to be_kind_of(Integer)
    end

    it "should contain a param about wind as a hash" do
      expect(@citycode.get_city_weather_wind).to be_kind_of(Hash)
    end

    it "should have a wind hash with 2 elements" do
      expect(@citycode.get_city_weather_wind.count).to eq(1)
    end

    it "should have the correct name of the city in question" do
      expect(@citycode.get_city_name).to be_kind_of(String)
    end
  end
end
