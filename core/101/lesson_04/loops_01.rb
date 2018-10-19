# loops 01 exercises

# Modify the following loop so it iterates 5 times instead of just once.
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
    iterations += 1

end
puts puts
#####################

# Modify the code below so "Hello!" is printed 5 times.

say_hello = true

counter = 0
while counter < 5
  puts 'Hello!'
  say_hello = false
  counter += 1
end
puts puts

####################

# Using a while loop, print 5 random numbers between 0 and 99. The code below
# shows an example of how to begin solving this exercise.

numbers = []

while numbers.size < 5
  numbers << rand(100) # << shuttle operator is an array method that mutates
  # the array by appending the array onto the end of the calling array.
end
puts numbers #puts outputs each element of the array as a string object.
puts puts

####################

# The following code outputs a countdown from 10 to 1. Modify the code so that
# it counts from 1 to 10 instead.
count = 1

until count == 11 # OR count > 10
  puts count
  count += 1
end
puts puts

###################

# Given the array of several numbers, use an until loop to print each number.
numbers = [7, 9, 13, 25, 18]

count = 0 # we can use this variable to acess each element at indexes of the
# array, initially beginning at 0, which is the first element/index of the array.

until count == numbers.size
  puts numbers[count] # use the count variable to access and output the
  # appropriate elemnt of the array. We can do that by using this sntax.
  # We're calling puts on element of the numbers array at the given index.
  # as count iterates, numbers is accessing the index given by count.
  count += 1
end
puts puts

#################

# Your friends just showed up! Given the following array of names, use a for loop
# to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends # better to name i the same name as the array variable name.
  puts "Hello #{i}!"
end
