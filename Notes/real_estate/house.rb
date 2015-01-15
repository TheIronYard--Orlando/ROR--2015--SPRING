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
    counts = {}
    # if @bedroom colors are blue, off white, and fuschia,
    # the 1st time through this iteration, bedroom.color will be blue
    # counts will be {}
    # counts[bedroom.color] will be nil
    @bedrooms.each do |bedroom|
      puts "counts is #{counts}"
      puts "color is #{bedroom.color}"
      puts "counts for that color is #{counts[bedroom.color]}"
      puts "changing the above to an integer and adding 1 gets #{counts[bedroom.color].to_i + 1}"
      counts[bedroom.color] = counts[bedroom.color].to_i + 1
      puts "counts is #{counts}"
    end
    counts.any?{|color, number| number == 2 }
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
      1000 * master_bedroom.size
    else has_no_matching_rooms?
      1 * master_bedroom.size
    end
  end

end