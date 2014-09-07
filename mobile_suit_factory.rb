class MobileSuitFactory
  attr_reader :max_speed, :reader_range, :name, :area_id, :contains
  def initialize(max_speed, radar_range, name)
    @max_speed = max_speed
    @radar_range = radar_range
    @name = name
    @area_id = GameInformation.instance.new_area_id
    @contains = [Cockpit.new(self)]
  end

  def self.create(name)
    case name
    when "leo"
      Leo.new
    when "taurus"
      Taurus.new
    when "aeries"
      Aeries.new
    end
  end
end

class Leo < MobileSuitFactory
  def initialize
    super(100, 20, "Leo")
  end
end

class Taurus < MobileSuitFactory
  def initialize
    super(250, 30, "Taurus")
  end
end

class Aeries < MobileSuitFactory
  def initialize
    super(150, 30, "Aeries")
  end
end
