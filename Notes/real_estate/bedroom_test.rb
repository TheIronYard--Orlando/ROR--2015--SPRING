require 'minitest/autorun'
require './bedroom'

class BedroomTest < MiniTest::Unit::TestCase

  def setup
    @bedroom = Bedroom.new("blue", 400)
  end

  def test_bedroom_has_color
    assert_equal "blue", @bedroom.color
  end

  def test_bedroom_has_a_size
    assert_equal 400, @bedroom.size
  end
end