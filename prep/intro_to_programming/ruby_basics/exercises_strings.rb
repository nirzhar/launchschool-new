############### 1 ###############
# Create an empty string using the String class and assign it to a variable.

empty_string = String.new # Or empty_string = ''
#In Ruby, strings can be created in multiple ways. Empty strings, however, can only
# be created in two ways. In the solution, we use one of the two ways, which is
# invoking String's ::new class method.

puts
############## 2 ###############
# Modify the following code so that double-quotes are used instead of single-quotes.

# puts 'It\'s now 12 o\'clock.'
puts "It's now 12'o clock." # OR %Q(It's now 12 o'clock.)


puts
############# 3 #############
=begin
Using the following code, compare the value of name with the string 'RoGeR'
while ignoring the case of both strings. Print true if the values are the same;
print false if they aren't. Then, perform the same case-insensitive comparison,
except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

=end

name = "Roger"

puts name.casecmp("RoGer") == 0
puts name.casecmp("Dave") ==

puts
################# 4 ###############
# Modify the following code so that the value of name is printed within "Hello, !".

name = "Elizabeth"

puts "Hello, !"
puts "Hello, #{name}!" # double quotes lets us use string interpolation.


puts
################## 5 #############
# Using the following code, combine the two names together to form a full name and
# assign that value to a variable named full_name. Then, print the value of full_name.

first_name = 'Rachel'
last_name = 'Pradhan'

puts full_name = "#{first_name} #{last_name}"
puts full_name = first_name +  ' ' + last_name


puts
################## 6 ##############

# Using the following code, capitalize the value of state then print the modified value.
# Note that state should have the modified value both before and after you print it.

state = 'tExAs'

puts state = 'tExas'.capitalize!

=begin
We use the destructive version of String#capitalize to satisfy the requirement that
state is actually modified. #capitalize! mutates the caller, therefore, when we invoke
puts state, the correctly formatted value will be printed, and state will continue
to have the corrected value afterwards.

=end

puts
################ 7 ###############

# Given the following code, invoke a destructive method on greeting so that Goodbye!
# is printed instead of Hello!.

greeting = 'Hello'
puts greeting

greeting.replace("Goodbye")
puts greeting

#OR

puts greeting.gsub!('Hello', 'Goodbye')


puts
################## 8 ################
# Using the following code, split the value of alphabet by individual characters and print each character.

alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('') # By invoking #split on alphabet and passing an empty string as an argument, we can separate individual characters in alphabet.

puts
############### 9 ###############
# Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

words.split(' ').each do |word| # each will iterate over each element and we're just concatenating s to each element(word)
  puts word + 's'
end

puts
############## 10 ##################
# Using the following code, print true if colors includes the color 'yellow' and
# print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')


=begin
We can use include? to check for confirmation of either answer. Eg:
user_input = gets.chomp.downcase
['yes', 'yeah'].include?(user_input)

=end

########################
