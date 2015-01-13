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
  def initialize(applicants, location)
    @members = applicants.select{|applicant| applicant.is_a?(Mogul) }
    @location = location
  end
end