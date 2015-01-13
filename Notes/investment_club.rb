class InvestmentClub

  attr_reader :members
=begin
  that's a shortcut for:
  def members
    @members
  end
=end
  attr_accessor :location
=begin
  that's a shortcut for:
  def location
    @location
  end

  def location=(new_location)
    @location = new_location
  end
=end
  def initialize(members, location)
    @members = members
    @location = location
  end
end