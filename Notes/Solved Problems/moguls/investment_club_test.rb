require 'minitest/autorun'
require './mogul'
require './investment_club'
=begin
 Billionaire investment club
 the investment club has mogul members
 and a snazzy meeting location
 when the club makes a good investment, all the members make a billion dollars
  if the club makes a great investment, they all make five billion dollars
 the richest member is President of the club
 (initially): members need to be worth > $2B to join
=end
class InvestmentClubTest < MiniTest::Unit::TestCase 

  def setup
    @carlos_slim = Mogul.new("Carlos Slim", 75)
    bill_gates = Mogul.new("Bill Gates", 60)
    mark_zuckerberg = Mogul.new("Mark Zuckerberg", 19)
    @members = [ bill_gates, mark_zuckerberg, @carlos_slim ]
    @investment_club = InvestmentClub.new(@members, "Morocco") 
  end

  def test_investment_club_has_members
    assert_equal @members, @investment_club.members
  end

  def test_member_is_a_mogul
    assert @investment_club.members[0].is_a?(Mogul)
  end

  def test_club_only_allows_moguls_as_members
    brian = "Brian Gates"
    bill = Mogul.new("Bill Gates", 48)
    ted = Mogul.new("Ted Turner", 13)
    members = [ brian, bill, ted ]
    club_with_sketchy_applicant = InvestmentClub.new(members, "Canvs")
    assert_equal 2, club_with_sketchy_applicant.members.length
  end

  # the richest member is president
  def test_richest_member_of_investment_club_is_president
    assert_equal @carlos_slim, @investment_club.president
  end
end