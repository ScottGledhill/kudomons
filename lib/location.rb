require 'kudomon_types/electric'
require 'kudomon_types/fire'
require 'kudomon_types/grass'
require 'kudomon_types/psychic'
require 'kudomon_types/rock'
require 'kudomon_types/water'

class Location
  attr_reader :kudomon
  include Electric
  include Fire
  include Grass
  include Pyschic
  include Rock
  include Water

  def initialize
    @kudomon = [ELECTRIC['Chickapu'],ELECTRIC['BuzzElecta'],FIRE['Mancharred'],
    FIRE['FatFireFace'],GRASS['Sourbulb'],GRASS['Execute'],PYSCHIC['Sleepy'],
    PYSCHIC['Moooooow'],ROCK['Goodude'],ROCK['DwayneJohnson'],WATER['Psscannon'],
    WATER['Supersoka']]
  end

  def create_random_location
    ELECTRIC['Chickapu'].store(:location, [rand(-20..20),rand(-20..20)])
    ELECTRIC['BuzzElecta'].store(:location, [rand(-20..20),rand(-20..20)])
    FIRE['Mancharred'].store(:location, [rand(-20..20),rand(-20..20)])
    FIRE['FatFireFace'].store(:location, [rand(-20..20),rand(-20..20)])
    GRASS['Sourbulb'].store(:location, [0, 1])
    GRASS['Execute'].store(:location, [rand(-20..20),rand(-20..20)])
    PYSCHIC['Sleepy'].store(:location, [rand(-20..20),rand(-20..20)])
    PYSCHIC['Moooooow'].store(:location, [rand(-20..20),rand(-20..20)])
    ROCK['Goodude'].store(:location, [rand(-20..20),rand(-20..20)])
    ROCK['DwayneJohnson'].store(:location, [rand(-20..20),rand(-20..20)])
    WATER['Psscannon'].store(:location, [rand(-20..20),rand(-20..20)])
    WATER['Supersoka'].store(:location, [rand(-20..20),rand(-20..20)])
  end

  def current_location
    kudomon.map {|kudo| kudo}
  end
end

#save to array and iterate through