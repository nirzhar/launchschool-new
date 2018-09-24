# Loops exercises 02

# Write a loop that prints numbers 1-5 and whether the number is even or odd.
# Use the code below to get started.
puts
count = 1

loop do
  if count.even?
    puts "I'm sure #{count} is even."
  else count.odd?
    puts "How odd that #{count} is odd."
  end
  count += 1
  break if count == 6
end
puts puts

#######################
# Modify the following code so that the loop stops if number is between 0 and 10.

loop do
  number = rand(100)
  puts number
  if number.between?(0, 10) # OR number >=0 && number <= 10 OR if (1..10).include?number
    break
  end
end
puts puts

########################

# Using an if/else statement, run a loop that prints "The loop was processed!"
# one time if process_the_loop equals true. Print "The loop wasn't processed!"
# if process_the_loop equals false.

process_the_loop = [true, false].sample

loop do
  if process_the_loop == true # true is not necessary here because Ruby will
    # evaluate the value process_the_loop references.
    puts "Processed!"
  else
    puts "Nope!"
  end
  break
end

########################

# The code below asks the user "What does 2 + 2 equal?" and uses #gets to
# retrieve the user's answer. Modify the code so "That's correct!" is printed and
# the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!"
# if the user's answer doesn't equal 4.

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Nope!! Try again..."
  end
end
puts puts
########################
# Modify the code below so that the user's input gets added to the numbers array.
# Stop the loop when the array contains 5 numbers.
# numbers = []
#
# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
# end
# puts numbers
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers
puts puts
######################

# Given the array below, use loop (ONLY - not while, until, etc)to remove and
# print each name. Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']
#
# for name in names
#   puts names.shift shift returns the elements it removes
# end
# puts names
# puts ##########
loop do
  puts names.shift # use .pop to remove names from last to first.
  break if names.empty? # OR names.size == 0
end
puts puts

####################
# The method below counts from 0 to 4. Modify the block so that it prints the
# current number and stops iterating when the current number equals 2.

5.times do |index| # block parameter, index, represents the current iteration number.
    puts index
    break if index == 2 # if == 4, it'll return 0, 1, 2, 3, 4; if < any number, returns 0.
end
puts puts
#######################
# Using next, modify the code below so that it only prints even numbers.
number = 0

until number == 10
  number += 1
  next if number.odd? # next lets you skip to the next iteratn based on given condition.
  puts number
end
puts puts

######################

# The following code increments number_a and number_b by either 0 or 1.
# loop is used so that the variables can be incremented more than once, however,
# break stops the loop after the first iteration. Use next to modify the code so
# that the loop iterates until either number_a or number_b equals 5.
# Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2) # will increment by either 0 or 1
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts "5 was reached!"
  break
end
puts puts
######################

# Given the code below, use a while loop to print "Hello!" twice.
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0 # while variable is > 0, program will keep iterating.
  # number_of_greetings has been initialized to 2, so we don't need to initialize it += 1.
  # we want to decrement the value by 1 - see below.
  greeting
  number_of_greetings -= 1
end
puts puts

###########################
#
