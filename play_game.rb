require 'singleton'
require './game'
require './player'
require './room_builder'
require './cockpit'
require './abstract_vessel_factory'
require './mobile_suit_factory'
require './ship_factory'
leo = AbstractVesselFactory.create_mobile_suit('leo')
puts leo.contains

