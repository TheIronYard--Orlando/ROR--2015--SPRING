# A quick (?) tour of Ruby syntax thus far.

puts "true is ", true 
puts "true || false is ", true || false
puts "false || true is ", false || true
puts "false || false is ", false || false

puts "true || something_that_should_blow_up is", true || explode!

puts "true && false is", true && false
puts "true && true is", true && true

[1, 2, 3].each{|n| puts n * 100 }
{ 'Spencer' => 'Hopkins', 'Ivan' => 'Sherman' }.each do |first, last|
  puts "If I shout the first name I get #{first.upcase} for Mr. #{last}"
end

x = 101
puts x > 100 ? "that's a big x!" : "that's not so big"
puts "that's the same as..."
if x > 100
  puts "that's a big x!"
else
  puts "that's not so big"
end
dinner_party = %w(andell angela jeff)
automatic_gratuity = dinner_party.length > 6 ? 0.18 : 0
automatic_gratuity = 0.18 if dinner_party.length > 6
lecture_finish = noon unless we_have_problems

literal_array = []
array_created_with_object_syntax = Array.new
puts literal_array == array_created_with_object_syntax

