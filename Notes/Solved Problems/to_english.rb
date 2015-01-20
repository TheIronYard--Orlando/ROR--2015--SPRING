# this is going to be a method that converts
# integers into their English language representations.
class Fixnum

  def to_english
    names_as_array = %w(zero one two three four
                        five six seven eight nine
                        ten eleven twelve thirteen
                        fourteen fifteen sixteen 
                        seventeen eighteen nineteen
                       )
    if self >= 1_000_000_000_000
      internal_calculation(1_000_000_000_000, "trillion")
    elsif self >= 1_000_000_000
      internal_calculation(1_000_000_000, "billion")
    elsif self >= 1000000
      internal_calculation(1000000, "million")
    elsif self >= 1000
      internal_calculation(1000, "thousand")
    elsif self >= 100
      internal_calculation(100, "hundred")
    elsif self > 19
      tens_names = %w(blank blank twenty thirty forty fifty
                      sixty seventy eighty ninety)
      tens = self / 10
      ones = self % 10
      if ones > 0
        "#{tens_names[tens]} #{ones.to_english}" 
      else
        tens_names[tens]
      end
    else
      names_as_array[self]  
    end 
  end
 
  def internal_calculation(place, name)
    remainder = self % place
    big_number = self / place
    if remainder > 0
      "#{big_number.to_english} #{name} #{remainder.to_english}"
    else
      "#{big_number.to_english} #{name}"
    end
  end
end
=begin Now that I'm using #to_english in the poker game, the puts get in the way
puts 0.to_english #=> "zero"
puts 1.to_english #=> "one"
puts 2.to_english #=> "two"
puts 9.to_english #=> "nine"
puts 20.to_english #=> "twenty"
puts 21.to_english #=> "twenty one"
puts 22.to_english #=> "twenty two"
puts 30.to_english #=> "thirty"
puts 99.to_english #=> "ninety nine"
puts 100.to_english #=> "one hundred"
puts 101.to_english
puts 178.to_english
puts 200.to_english
puts 543.to_english
puts 1000.to_english
puts 2000.to_english
puts 3456.to_english
puts 10611.to_english
puts 999999.to_english
puts 1000000.to_english
=end