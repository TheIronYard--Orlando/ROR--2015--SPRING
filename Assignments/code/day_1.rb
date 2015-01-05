# Write code to answer each of the following questions. Show the code and, in a comment, its return value.
# Example:
# How many letters are in the word 'abbreviation'?
'abbreviation'.length #=> 12

# Is pi bigger than 22/7?

# a person who's 6'5" is how many inches tall?


weather = "an absolutely beautiful day"
# write the shortest possible code that will print out the string "Hello! Isn't it an absolutely beautiful day today?"

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
"3 + 2 is #{3+2}"

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 4 ? 'greater' : 'lesser'} than four."

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 6 ? 'greater' : 'lesser'} than six."

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code what it does.
"Five is #{5 == 100 ? '' : 'not '}the same as one hundred."

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
[ 1, 2, 3, 4, 5].collect do |n|
  n * 3
end

# beginning with a list of the numbers 3, -2, 7.5, and 90, make a list containing their absolute values.

# Add a comment after the following code block showing its return value.
# Then add a second comment explaining in English what the code does.
[ 'David Rogers', 'Brian Gates', 'Jerry Seinfeld', 'Larry David' ].select do |name|
  name.include?('David')
end

# create a list of the names Joe, Kelly, Spencer, Peter, Ivan, Andell, Angela, Jeff to use for the next five tasks.

# access the 5th name in the list

# add my name to the end of the list

# make a list of the names in alphabetical order

# make a list of the names in reverse alphabetical order

# make a list of the names from shortest to longest

# Add a comment after the following line of code showing its return value.
# Then add a second comment explaining in English what the code does.  
%w(Joe Kelly Spencer Peter Ivan Andell Angela Jeff Brian).partition{|name| name.length == 5 }

# Split the above list of names into a group that starts with 'J' and a group that doesn't.

president_birthdays = { 
    'Abraham Lincoln' => 'February 12, 1809', 
    'William Henry Harrison' => 'February 9, 1773', 
    'George Washington' => 'February 22, 1732', 
    'Ronald Reagan' => 'February 6, 1911' 
  }
# write code to access George Washington's birthday from the hash.

# Add a comment after the following block of code showing its return value.
# Then add another comment explaining in English what the code does. 
president_birthdays.each do |key, value|
  puts "President #{key} was born on #{value}."
end

# Imagine you were talking to someone who missed today's class (and the prework). 
# Write down how you would explain how to go about solving the next task. Then write code to solve it.
# Modify the code to print out only the Presidents born during the 18th century. 

# Modify the code to print out only the President born during the 20th century.

# Add James A. Garfield (born November 19, 1831) to the hash, and modify the code (if necessary) to print out only the President born during the 20th century.

# Also add Bill Clinton (born August 19, 1946), and modify the code (if necessary) to print out the two Presidents born during the 20th century. 

# EXPERT LEVEL: modify the code to print out the Presidents in the order of their birth.

# SUPER EXPERT LEVEL: Modify the code to print out the Presidents with February birthdays in the order their birthdays occur during the month.

# SUPER DUPER EXPERT LEVEL: Print out the six Presidents in the order their birthdays occur during the year.

# Create a data structure that has the numbers from one to ten that matches the
# representation of each as a word (like 'one') with the corresponding
# representation as a numeral (like 1). 

# If you print out the names of the numbers from one to three in alphabetical order
# alongside the numeral for each, it could look like
# one (1)
# three (3)
# two (2)
# Create the same kind of print out for the numbers from one to ten.

n = 3; puts "I have #{n} pizza#{n = 1 ? '' : 's'}"
# What is the typo in the above line, and why does it have the effect that it does?

# Fix the typo in the above line of code.
