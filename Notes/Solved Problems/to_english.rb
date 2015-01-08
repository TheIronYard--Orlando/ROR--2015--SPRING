# this is going to be a method that converts
# integers into their English language representations.
class Fixnum

  def to_english
    names = {
      0 => "zero",
      1 => "one",
      2 => "two"
    }
    names[self]
  end
end

puts 0.to_english #=> "zero"
puts 1.to_english #=> "one"
puts 2.to_english #=> "two"