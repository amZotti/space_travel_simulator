class MobileSuitFactory
  def self.create(name, game)
    case name
    when "leo"
      Leo.new(game)
    when "taurus"
      Taurus.new(game)
    when "aeries"
      Aeries.new(game)
    end
  end
end

class Leo
  def initialize(game)
    @max_speed = 100
    @radar_range = 20
    @name = "Leo"
    @area_id = game.new_area_id
  end
  attr_reader :max_speed, :reader_range, :name, :area_id
end

class Taurus
  def initialize(game)
    @max_speed = 250
    @radar_range = 30
    @name = "Taurus"
    @area_id = game.new_area_id
  end
  attr_reader :max_speed, :reader_range, :name, :area_id
end

class Aeries
  def initialize(game)
    @max_speed = 150
    @radar_range = 30
    @name = "Aeries"
    @area_id = game.new_area_id
  end
  attr_reader :max_speed, :reader_range, :name, :area_id
end
