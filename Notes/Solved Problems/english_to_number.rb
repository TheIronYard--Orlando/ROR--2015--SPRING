# I want a function that will convert English language numbers into 
# their numerical representation.
# For example:
# english_to_number('one') #=> 1
# english_to_number('ninety six') #=> 96
# The function should at least work up to 100. 1_000_000_000_000 would be better.

def english_to_number(word_or_words)
  if word_or_words == nil #in case recursive call has no argument
  	word_or_words = ''
  end
  number_hash = {
  	'one' => 1,
  	'two' => 2,
  	'three' => 3,
  	'four' => 4,
  	'five' => 5,
  	'six' => 6,
  	'seven' => 7,
  	'eight' => 8,
  	'nine' => 9,
  	'ten' => 10,
  	'eleven' => 11,
  	'twelve' => 12,
  	'thirteen' => 13,
  	'fourteen' => 14,
  	'fifteen' => 15,
  	'sixteen' => 16,
  	'seventeen' => 17,
  	'eighteen' => 18,
  	'nineteen' => 19,
  	'twenty' => 20,
  	'thirty' => 30,
  	'forty' => 40,
  	'fifty' => 50,
  	'sixty' => 60,
  	'seventy' => 70,
  	'eighty' => 80,
  	'ninety' => 90
  }  
  if word_or_words.include?('thousand')
  	thousands, remainder = word_or_words.split('thousand')
  	return english_to_number(thousands) * 1000 + english_to_number(remainder)
  elsif word_or_words.include?('hundred')
    hundreds, remainder = word_or_words.split('hundred')
    return english_to_number(hundreds) * 100 + english_to_number(remainder)
  end
  array_of_words = word_or_words.split
  total = 0
  array_of_words.each{|word| total = total + number_hash[word]}
  total
end

puts english_to_number('one') #=> 1
puts english_to_number('twenty') #=> 20
puts english_to_number('twenty five') #=> 25
puts english_to_number('one hundred') #=> 100
puts english_to_number('six hundred thirty two') #=> 632
puts english_to_number('four thousand eight hundred twelve') #=> 4812