=begin
 
 I want a big master bedroom.
 Well, actually, color is important to me? 
 I want bedrooms that are the exact same color.
 2 better than none, and 3 better 2
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
    assert @blue_house.has_2_matching_rooms?
  end

  def test_house_might_not_have_2_matching_rooms
    refute @house.has_2_matching_rooms?
  end

  def test_house_can_have_no_matching_bedrooms
    assert @house.has_no_matching_rooms?
  end

  def test_house_might_not_have_no_matching_bedrooms
    refute @blue_house.has_no_matching_rooms?
  end

  def test_house_with_2_matching_bedrooms_better_than_no_matching_bedrooms
    assert @blue_house > @house
  end
end