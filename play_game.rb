require 'singleton'
require './game'
require './player'
require './abstract_vessel_factory'
require './mobile_suit_factory'
require './ship_factory'
game = Game.instance
puts AbstractVesselFactory.create_ship(100, 100, "russian space cruiser", game)
puts AbstractVesselFactory.create_mobile_suit("leo", game)
