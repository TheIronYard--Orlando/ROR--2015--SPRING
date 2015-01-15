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
    @house = House.new()
  end

  def test_house_has_bedrooms
    assert @house.bedrooms
  end
end