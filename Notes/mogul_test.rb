require 'minitest/autorun'
require './mogul'

class MogulTest < MiniTest::Unit::TestCase

  # a mogul has a name and net worth

  def setup
    @mogul = Mogul.new("Steve Jobs", 20)
  end

  def test_mogul_has_name_and_net_worth
    assert_equal "Steve Jobs", @mogul.name
    assert_equal 20, @mogul.net_worth
  end
end