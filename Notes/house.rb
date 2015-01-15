require './bedroom'
class House

  include Comparable
  
  attr_reader :bedrooms

  def initialize(bedrooms)
    @bedrooms = bedrooms
  end

  def master_bedroom
    @bedrooms.max_by{|bedroom| bedroom.size }
  end

  def has_2_matching_rooms?
    @bedrooms[0].color == @bedrooms[1].color
  end

  def has_no_matching_rooms?
    all_colors = @bedrooms.collect{|bedroom| bedroom.color }
    #for @house in the test, all_colors = [ 'blue', 'off white', 'fuscia']
    # and all_colors.uniq = [ 'blue', 'off white', 'fuscia']
    unique_colors = all_colors.uniq
    all_colors.size == unique_colors.size
  end

  def <=>(other_house)
    awesomeness <=> other_house.awesomeness
  end

  def awesomeness
    if has_2_matching_rooms?
      1000
    else has_no_matching_rooms?
      1
    end
  end

end