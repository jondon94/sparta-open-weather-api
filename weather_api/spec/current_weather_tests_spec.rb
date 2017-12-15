require 'spec_helper'

describe CurrentWeatherInfo do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @citycode = CurrentWeatherData.new
    end

    it "should have the information of the city as a Hash" do
      expect(@citycode.get_city_info).to be_kind_of(Hash)
    end

  end
end
