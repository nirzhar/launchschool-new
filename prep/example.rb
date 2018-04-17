=begin
puts 'Hello, World!'

# Naming a file
# this_is_a_snake_cased_file.#!/usr/bin/env ruby -wKU

#Assigning a variab;e

forty_two = 42

#Defining a method

def this_is_a_great_method
  # do stuff
end


# Constant declaration

FOUR = 'four'
FIVE = 5

# Multi line vs single line

[1, 2, 3].each do  |i|
  # do stuff
end

[1, 2, 3].each { |i| } # do stuff }

# Class Naming
class MyFirstClass
end

class MySecondClass
end

for i in 1..20
  puts i
end
=begin
puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
#############################
puts "Enter a text: "
text = gets.chomp

puts "Enter the word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each { |word|
  if word == "redact"
    print "REDACTED"
  else
    print word + " "
  end }

=end

=begin
  puts "Enter some text, please: "
  text = gets.chomp

  words = text.split
  frequencies = Hash.new(0)

  words.each do | x |
    frequencies[word] += 1
  end



puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!

=end
=begin
###################################
puts "Enter some text, please: "
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each { |words| frequencies[words] += 1 }
frequencies = frequencies.sort_by do | words, frequency |
  frequencies
end

frequencies.each do |words, frequency|
	puts words + " " + frequency.to_s
end

=end

#########################################

=begin

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# my_array.each { puts |x| % 2 == 0 ? x : "" }

# my_array.each { |x| puts x % 2 == 0 }

# my_array.each { |x| x.even?  puts x

my_array.each { |num| puts num unless num % 2 !=0

"L".upto("P") { |x| puts x}

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end


puts "One is less than two!" if 1 < 2

=end


###################

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  return "n must be an integer." unless n.is_a? Integer

  return "n must be greater than 0." if n <=  0

  return Prime.first n

end

first_n_primes(10)
