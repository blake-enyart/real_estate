require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)

    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
  end

  def test_room_exist

    assert_instance_of House, @house
  end

  def test_add_room_places_room_in_rooms_attr
    array = [@room_1, @room_2, @room_3, @room_4]

    assert_equal array, @house.rooms
  end

  def test_select_rooms_based_on_category

    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
  end

  def test_calculate_area_correctly
    
    assert_equal 1900, @house.area
  end
end

##PRY BLOCK 3

# require './lib/room'
# #=> true
#
# require './lib/house'
# #=> true
#
# house = House.new("$400000", "123 sugar lane")
# #=> #<House:0x00007fccd30375f8...>
#
# room_1 = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fccd29b5720...>
#
# room_2 = Room.new(:bedroom, 11, 15)
# #=> #<Room:0x00007fccd2985f48...>
#
# room_3 = Room.new(:living_room, 25, 15)
# #=> #<Room:0x00007fccd383c2d0...>
#
# room_4 = Room.new(:basement, 30, 41)
# #=> #<Room:0x00007fccd297dc30...>
#
# house.add_room(room_1)
# #=> [#<Room:0x00007fccd29b5720...]
#
# house.add_room(room_2)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
#
# house.add_room(room_3)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>, #<Room:0x00007fccd383c2d0...>]
#
# house.add_room(room_4)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>, #<Room:0x00007fccd383c2d0...>, #<Room:0x00007fccd297dc30...>]
#
# house.rooms_from_category(:bedroom)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
#
# house.rooms_from_category(:basement)
# #=> [#<Room:0x00007fccd297dc30...>]
#
# house.area
# #=> 1900


##PRY BLOCK 2

# require './lib/room'
# #=> true
#
# require './lib/house'
# #=> true
#
# house = House.new("$400000", "123 sugar lane")
# #=> #<House:0x00007fccd30375f8...>
#
# house.price
# #=> 400000
#
# house.address
# #=> "123 sugar lane"
#
# house.rooms
# #=> []
#
# room_1 = Room.new(:bedroom, 10, 13)
# #=> #<Room:0x00007fccd29b5720...>
#
# room_2 = Room.new(:bedroom, 11, 15)
# #=> #<Room:0x00007fccd2985f48...>
#
# house.add_room(room_1)
# #=> [#<Room:0x00007fccd29b5720...]
#
# house.add_room(room_2)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
#
# house.rooms
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
