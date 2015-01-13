require 'minitest/autorun'
require './mogul'
require './investment_club'

class MogulTest < MiniTest::Unit::TestCase

  # a mogul has a name and net worth

  def setup
    @mogul = Mogul.new("Steve Jobs", 20)
  end

  def test_mogul_has_name_and_net_worth
    assert_equal "Steve Jobs", @mogul.name
    assert_equal 20, @mogul.net_worth
  end

  # a mogul laughs at a poorer mogul

  def test_mogul_laughs_at_less_fortunate_mogul
    less_fortunate_mogul = Mogul.new("Peter Ortiz", 1)
    assert @mogul.laughs_at?(less_fortunate_mogul)
  end
  
  # a mogul does not laugh at a richer mogul

  def test_mogul_does_not_laugh_at_richer_mogul
    richer_mogul = Mogul.new("Bill Gates (no relation)", 42)
    assert_equal @mogul.laughs_at?(richer_mogul), false
  end 
end

=begin
 Billionaire investment club
 the investment club has mogul members
 and a snazzy meeting location
 when the club makes an investment, all the members make a billion dollars
 the richest member is President of the club
 (initially): members need to be worth > $2B to join
=end
class InvestmentClubTest < MiniTest::Unit::TestCase 

  def setup
    carlos_slim = Mogul.new("Carlos Slim", 75)
    @members = [ carlos_slim ]
    @investment_club = InvestmentClub.new(@members, "Morocco") 
  end

  def test_investment_club_has_members
    assert_equal @members, @investment_club.members
  end

end