require './mobile_suit_factory'
require './ship_factory'

class AbstractVesselFactory
  def self.create_ship(max_speed, radar_range, name)
    ShipFactory.create(max_speed, radar_range, name)
  end

  def self.create_mobile_suit(name)
    MobileSuitFactory.create(name)
  end
end
