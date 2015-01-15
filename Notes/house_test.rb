=begin
 
 I want a big master bedroom.
 Well, actually, color is important to me? 
 I want bedrooms that are the exact same color.
 2 better than none, and 3 better 2
 also, I still want the master bedroom size as tiebreaker
 except I don't want them all the same size.
 except really? I'd like 2 of 1 color, and 2 of another color.
=end

require 'minitest/autorun'
require './house'

class HouseTest < MiniTest::Unit::TestCase

  def setup
    bedrooms = [ Bedroom.new("blue", 600), Bedroom.new('off white', 500), Bedroom.new('fuschia', 525)]
    @house = House.new(bedrooms)

    blue_room_1 = Bedroom.new("blue", 500)
    blue_room_2 = Bedroom.new("blue", 760)
    @blue_house = House.new([blue_room_1, blue_room_2])
  end

  def test_house_has_bedrooms
    assert @house.bedrooms
  end

  def test_house_has_master_bedroom
    assert_equal 600, @house.master_bedroom.size
  end

  def test_house_can_have_2_matching_bedrooms
    puts "test matching w blue house"
    assert @blue_house.has_2_matching_rooms?
  end

  def test_house_with_blue_and_red_and_then_blue_bedrooms_has_2_matching
    blue_room_1 = Bedroom.new('blue', 600)
    red_room_1  = Bedroom.new('red', 570)
    blue_room_2 = Bedroom.new('blue', 400)
    house = House.new([blue_room_1, red_room_1, blue_room_2])
    puts "test matching with blue red blue"
    assert house.has_2_matching_rooms?
  end

  def test_house_might_not_have_2_matching_rooms
    puts "test matching with blue off white fuschia"
    refute @house.has_2_matching_rooms?
  end

  def test_house_can_have_no_matching_bedrooms
    assert @house.has_no_matching_rooms?
  end

  def test_house_might_not_have_no_matching_bedrooms
    refute @blue_house.has_no_matching_rooms?
  end
=begin
  def test_house_with_2_matching_bedrooms_better_than_no_matching_bedrooms
    assert @blue_house > @house
  end

  def test_if_both_houses_have_2_matching_bedrooms_pick_bigger_master
    orange_bedroom_1 = Bedroom.new('orange', 800)
    orange_bedroom_2 = Bedroom.new('orange', 900)
    relaxing_house = House.new([orange_bedroom_1, orange_bedroom_2])
    assert relaxing_house > @blue_house
  end
=end
  def test_if_neither_house_has_matching_rooms_pick_bigger_master
    yellow_room = Bedroom.new('yellow', 700)
    pink_room = Bedroom.new('pink', 850)
    happy_house = House.new([yellow_room, pink_room])
    assert happy_house > @house
  end
end