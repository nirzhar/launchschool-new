# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
if sun == 'visible'
  puts "The sun is so bright!"
else
  puts "Not!"
end

puts
################## 2 #################
# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

sun = ['visible', 'hidden'].sample

# Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.
unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

puts
################# 3 ###################
# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals visible.
# Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# When writing these statements, take advantage of Ruby's expressiveness and use statement
# modifiers instead of an if...end statement to print results only when some condition is met or not met.

puts 'Bright!!' if sun == 'visible'
puts "The clouds!!" unless sun == 'visible'


puts
################ 4 ##############
# In the code below, boolean is randomly assigned as true or false.
boolean = [true, false].sample
# Write a ternary operator that prints "I'm true!" if boolean equals true and
# prints "I'm false!" if boolean equals false.

boolean ? puts("It's true!") : puts("I'm false!")


puts
############### 5 ############
# What will the following code print? Why? Don't run it until you've attempted to answer.

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# My favorite number is 7
# The key thing to keep in mind when determining what the code will print is that
# in Ruby, every expression evaluates to true when used in a condition. The only two
# exceptions to this are false and nil. Therefore, "My favorite number is 7." will
# print regardless of number's value as long as it's truthy.

puts
############## 6 ###############
# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

spotlight = ['green', 'yellow', 'red'].sample

# Write a cse statement that prints, "Go!" if spotlight equlas 'green', "Slow down!"
# if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

case spotlight
when 'green'
    puts "Go!"
when 'yellow'
    puts "Slow down!"
else
    puts "Stop!"
end

puts
################ 7 #############
# 3 convert the above to an if statement.

spotlight = ['green', 'yellow', 'red'].sample

if spotlight == 'green'
  puts "Go!"
elsif 'yellow'
  puts "Slow down!"
else
  puts "Stop!"
end


puts
##################### 8 ###############
# In the code below, status is randomly assigned as 'awake' or 'tired'.

status = ['awake', 'tired'].sample
# Write an if statement that returns "Be productive!" if status equals 'awake'
# and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement
# to a variable and print that variable.

alert = if status == 'awake'
          "Be productive!"
        else
          "Go to sleep!"
        end

puts alert


puts
################ 9 ##############
# In the code below, number is randomly assigned a number between 0 and 9.
# Then, an if statement is used to print "5 is a cool number!" or "Other numbers are cool too!"
# based on the value of number.


number = rand(10)

if number >= 5 3 # OR number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# Currently, "5 is a cool number!" is being printed every time the program is run.
# Fix the code so that "Other numbers are cool too!" gets a chance to be executed.


puts

############## 10 #############
# Reformat the following case statement so that it only takes up 5 lines.

=begin
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

=end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end

###########################
