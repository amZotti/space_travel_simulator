class AbstractVesselFactory
  def self.create_ship(name)
    ShipFactory.create(name)
  end

  def self.create_mobile_suit(name)
    MobileSuitFactory.create(name)
  end
end
