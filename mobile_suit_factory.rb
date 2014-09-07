class MobileSuitFactory
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

class Leo
  def initialize
    @max_speed = 100
    @radar_range = 20
    @name = "Leo"
    @area_id = Game.instance.new_area_id
    @contains = [Cockpit.new(self)]
  end
  attr_reader :max_speed, :reader_range, :name, :area_id, :contains
end

class Taurus
  def initialize(game)
    @max_speed = 250
    @radar_range = 30
    @name = "Taurus"
    @area_id = Game.instance.new_area_id
    @contains = [Cockpit.new(self)]
  end
  attr_reader :max_speed, :reader_range, :name, :area_id, :contains
end

class Aeries
  def initialize(game)
    @max_speed = 150
    @radar_range = 30
    @name = "Aeries"
    @area_id = Game.instance.new_area_id
    @contains = [Cockpit.new(self)]
  end
  attr_reader :max_speed, :reader_range, :name, :area_id, :contains
end
