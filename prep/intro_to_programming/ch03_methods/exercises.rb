# Exercises


=begin

1: Write a program that prints a greeting message. This program should contain
a method called greeting that takes a name as its parameter and r
eturns a string.

=end

def greeting(name)
  "Namaste, " + name
end

puts greeting("Rachel!")


###################################

#2: What do the following expressions evaluate to?

x = 2
# 2 variable assignment. Variable x will evaluate to integer 2.

puts x = 2
# => nil puts method always evaluates to nil. Here the output is 2, but returnis nil.

p name = "Nirvan"
# "Nirvan" p method outputs it's argument and returns the argument.

four = "four"
# "four" variable assignment. String four will evaluate to string four.

print something = "nothing"
# => nil. We assign the string "nothing" to the variable, something, and we pass
# the return value of that
# assignment to the method print, which will output the value of the variable,
# but will always evaluates to nil.


#######################################

=begin

3. Write a program that includes a method called multiply that takes
two arguments and returns the product of the two numbers.

=end

def multiply( a, b )
  return a * b
end

puts multiply( 5, 7 )
# 35

#######################################

=begin

4. What will the following code print to the screen?

=end

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
# Will not print anything because after the return statement nothing is evaluated.
# When explicit return is executed, the program(RUby) will immediately exit from the method
# and line 69 (puts words) will not be executed and words will not be outputted

#####################################

=begin

1) Edit the method definition in exercise #4 so that it does print words
on the screen. 2) What does it return now?

=end

def scream(words)
  words = words + "!!!!"
  puts words
end
scream("Did it")
# Did it!!!! - this is the output
# returns nil because puts returns nil

#####################################

=begin

What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'


=end

# A method called, calculate_product requires two arguments, but only one was passed/provided.
