# I want a method that will convert integers into their Roman numeral representation.
# For example:
# 3.to_roman => "III"
# 15.to_roman => "XV"

class Fixnum

  def to_roman
    if self <= 3
      "I" * self
    else
      "IV"
    end
  end
end

puts 1.to_roman #=> "I"
puts 2.to_roman #=> "II"
puts 4.to_roman #=> "IV"
puts 5.to_roman #=> "IV" (should be "V")