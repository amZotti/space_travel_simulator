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
  end
  attr_reader :max_speed, :reader_range, :name
end

class Taurus
  def initialize
    @max_speed = 250
    @radar_range = 30
    @name = "Taurus"
  end
  attr_reader :max_speed, :reader_range, :name
end

class Aeries
  def initialize
    @max_speed = 150
    @radar_range = 30
    @name = "Aeries"
  end
  attr_reader :max_speed, :reader_range, :name
end
