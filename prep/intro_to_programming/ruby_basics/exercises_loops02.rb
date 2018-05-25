#### 1 ############

#Write a loop that prints numbers 1 -5 and whethere the number is even or aodd. Use the code below to get started.

numbers = [ 1, 2, 3, 4, 5 ]
count = 1

loop do
  if count.even? # OR if count % 2 == 0
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end

puts
################### 2 ###########

# Modify the following code so that the loop stops if number is between 0 and 10.

loop do
  number = rand(100)
  puts number

  break if number.between?(0, 10) # OR break if number >= 0 && number <= 10

end

puts
############# 3 #################
# Using an if/else statement, run a loop that prints "The loop was processed!"
# one time if process_the_loop equals true. Print "The loop wasn't processed!"
# if process_the_loop equals false.

process_the_loop = [true, false].sample

if process_the_loop == true # ==true is not necessary in Ruby.

  loop do
    puts "Processed!"
    break
  end
else
  puts "Nope!"

puts
############# 4 ################

=begin

The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve
the user's answer. Modify the code so "That's correct!" is printed and the loop
stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the
user's answer doesn't equal 4.

=end

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end
  else
  puts "Wrong!!!"
  end
end
puts
################### 5 ##############

# Modify the code below so that the user's input gets added to the numbers array.
# Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
end
puts numbers

################### 6 ##############

# Given the array below, use loop to remove and print each name. Stop the loop
# once names doesn't contain any more elements.


names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names.pop # shift will remove from the front of the array
  if names.size == 0 # or names.empty?
    break
  end

end

puts
################# 7 ##################

# The method below counts from 0 to 4. Modify the block so that it prints the
# current number and stops iterating when the current number equals 2.

5.times do |index| # The times method counts from 0 to one less than the specified number. In t
  puts index
  break if index == 2

end

puts
############## 8 ###################
# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  next if number.odd? # skip the odd numbers.
  puts number

end

puts
################## 9 ##################
=begin

The following code increments number_a and number_b by either 0 or 1. loop is
used so that the variables can be incremented more than once, however, break
stops the loop after the first iteration. Use next to modify the code so that
the loop iterates until either number_a or number_b equals 5. Print "5 was reached!"
before breaking out of the loop.

=end


number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

puts
############### 10 ##################

# Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
number_of_greetings -= 1
end
