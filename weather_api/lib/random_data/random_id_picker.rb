require 'json'
require 'HTTParty'
require 'yaml'
# require_relative 'city_id'

class CityIdGen

  def random_city_id_gen
    thing = YAML.load_file('./city_id.yml')
    # puts thing.inspect
  end

  # def random_city_id_gen
  #
  #   file = YAML.load_file("lib/random_data/city_id.yml")
  #   file(rand(file.length))
  #
  # end

end

t = CityIdGen.new
p t.random_city_id_gen.inspect
