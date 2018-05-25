# Loops 01

# Modify the following loop so it iterates 5 times instead of just once.
=begin

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end

=end


iterations = 1

 loop do
   puts "Number of iterations = #{iterations}"
     iterations += 1 # iterations = iterations + 1
     break if iterations > 5
 end

 puts

############ ###################

iterations = 1
loop do

  if iterations <6
    puts "Number of iterations = #{iterations}"
    iterations += 1
  else break
  end

  end
  puts

###########################
# Modify the code below so the loop stops iterating when the user inputs 'yes'.

=begin

  loop do
    puts 'Should I stop looping?'
    answer = gets.chomp
  end


=end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  if answer == "yes" || answer == "y" || answer == "Yes"
    break
  else
    puts "Wut?"
  end
end

puts

###########################

say_hello = true

while say_hello
  puts 'Hello!'*5
  say_hello = false
end

puts

=begin

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

=end

#################

# Using a while loop, print 5 random numbers between 0 and 99. The code below
# shows an example of how to begin solving this exercise.


i = 0
while i < 5
  puts rand(100)
  i += 1
end

puts
######################

# The following code outputs a countdown from 10 to 1. Modify the code so that
# it counts from 1 to 10 instead.

=begin
count = 10

until count == 0
  puts count
  count -= 1
end
=end

count = 1

until count == 11
  puts count
  count += 1
end

puts
################## 8 ##############

# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end


puts
#######################


############### 9 ###############
# The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
  puts i if i.odd?
end


puts

########################
# Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Rachel', 'Dorje', 'Nirvan']

for i in friends
  puts "Hello," + i + "!"
end
#OR

for friend in friends
  puts "Hello, #{friend}!"
end
