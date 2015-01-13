require 'minitest/autorun'
require './mogul'
require './investment_club'
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