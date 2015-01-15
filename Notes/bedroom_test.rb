require 'minitest/autorun'
require './bedroom'

class BedroomTest < MiniTest::Unit::TestCase

  def setup
    @bedroom = Bedroom.new("blue")
  end

  def test_bedroom_has_color
    assert_equal "blue", @bedroom.color
  end
end