require './mobile_suit_factory'
require './ship_factory'

class AbstractVesselFactory
  def self.create_ship(max_speed, radar_range, name, game)
    ShipFactory.create(max_speed, radar_range, name, game)
  end

  def self.create_mobile_suit(name, game)
    MobileSuitFactory.create(name, game)
  end
end
