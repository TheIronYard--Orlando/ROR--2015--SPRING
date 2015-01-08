# this is going to be a method that converts
# integers into their English language representations.
class Fixnum

  def to_english
    names_as_array = %w(zero one two three four
                        five six seven eight nine
                        ten eleven twelve thirteen
                        fourteen fifteen sixteen 
                        seventeen eighteen nineteen twenty
                       )
    if self > 20
      tens = self / 10
      ones = self % 10
      "twenty #{ones.to_english}" 
    else
      names_as_array[self]  
    end 
  end
end

puts 0.to_english #=> "zero"
puts 1.to_english #=> "one"
puts 2.to_english #=> "two"
puts 9.to_english #=> "nine"
puts 21.to_english #=> "twenty one"
puts 22.to_english #=> "twenty two"