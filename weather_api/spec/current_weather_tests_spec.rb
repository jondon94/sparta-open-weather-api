require 'spec_helper'

describe CurrentWeatherInfo do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @citycode = CurrentWeatherData.new
    end

    it "should have the information of the city as a Hash" do
      expect(@citycode.get_city_info).to be_kind_of(Hash)
    end

    it "should have the coordinates of the city in a Hash" do
      expect(@citycode.get_location_coordinates).to be_kind_of(Hash)
    end

    it "should have an array of information concerning weather" do

    end

  end
end
