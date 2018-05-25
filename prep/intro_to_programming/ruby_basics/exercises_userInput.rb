############## 1 ###########

# Write a program that asks the user to type something in, after which your program should simply display what was entered.
puts "Type anything you want."

  typesomething = gets.chomp # OR typesomething = gets {gets (get string)is a method that waits for user to input something.}

puts typesomething

puts
################ 2 ######################

# Write a program that asks the user for their age in years, and then converts that age to months.

puts ">> What is your age?"

age = gets.chomp.to_i
ageinmonths = age * 12
puts "You are #{ageinmonths} months old." # When we put ageinmonths, which is an integer, within curly braces
# while performing string interpolation, Ruby calls to_s on that value and converts it back to a string.

puts
################# 3 ###################
# Write a program that asks the user whether they want the program to print "something",
#then print it if the user enters y. Otherwise, print nothing.

=begin
puts "Do you want to print 'something'(y/n)?"
answer = gets.chomp
if answer == "y" || answer == "Y"
  puts "something"
else
  exit
end

# OR puts "something" if choice == "y"
=end
puts
#################### 4 ##############
=begin

Modify your program so it prints an error message for any inputs that aren't y or n,
and then asks you to try again. Keep asking for a response until you receive a valid
 or n response. In addition, your program should allow both Y and N (uppercase) responses;

=end

answer = nil # we declare the variable, answer here, outside the loop otherwise there will be an scope error.
loop do
  puts "Do you want to print 'some'? (y/n)"
  answer = gets.chomp # we reassign answer within the loop.

  break if ['y', 'n'].include?(answer) # Or if %w(y n).include?(answer) %w(y n) will be recognized as an array of strings in Ruby.
  # Or if choice == 'y' || choice == 'n'
  puts ">> Invalid! Try y or n."
end

if answer == 'y' || answer == 'Y' # Or we can do answer = gets.chomp.downcase which will convert all inputs to downcase, so we don't have to worry about Y or y.
  puts "some"
end

=begin
this if statement is out of the loop so that
the program will break if user inpouts y or n, and it will never reach the if statment
if it is inside the loop, so we put it outside so when the loop breaks, it will
  continue to execute the next line of code, which is the if statement.
  =end
################# 5 ################
=begin
Write a program that prints 'Launch School is the best!' repeatedly until a certain
number of lines have been printed. The program should obtain the number of lines
from the user, and should insist that at least 3 lines are printed.
=end

number_of_lines = nil
loop do
  puts ">> How many lines would you like? Enter a number greater or equal (>=) to 3:"
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts "More lines needed!"
end

while number_of_lines > 0
  puts "Launch School is the best. Ra! Ra!! Ra!!!"
  number_of_lines -= 1
end


puts
####################### 6 ###################
# Write a program that displays a welcome message, but only after the user enters
# the correct password, where the password is a string that is defined as a constant
# in your program. Keep asking for the password until the user enters the correct password.

PASSWORD = "DNR"
loop do
 puts "Enter the password."
 answer = gets.chomp
 #if answer != PASSWORD
  # puts " That's not it. Try again."
 #end
 break if answer == PASSWORD
 puts "That's not it! Try again."
end
puts "Welcome!"

puts
############### 7 #######################
=begin
Modify the program so it also requires a user name. The program should
solicit both the user name and the password, then validate both, and issue a generic
error message if one or both are incorrect; the error message should not tell the
user which item is incorrect.
=end

PASSWORD2 = "DNR"
USERNAME = "ibadabing"
loop do
  puts "Enter the username."
  answer_username = gets.chomp
  puts "Enter the password."
  answer_password = gets.chomp
  break if answer_username == USERNAME && answer_password == PASSWORD2
  puts "mmm...nope! Try again."
end

puts "Woo cowboy!"

puts
################# 8 ################
=begin
 Write a program that obtains two Integers from the user, then prints the results
 of dividing the first by the second. The second number must not be 0, and both
 numbers should be validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

=end


def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts "enter the numerator: "
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Nope. Only integers."
end

denominator = nil
loop do
  puts "Enter the denominator: "
  denominator = gets.chomp

  if denominator == 0
    puts "Invalid. 0 is not allowed."
  else
    break if valid_number?(denominator)
  puts " Integers only. No alphabets."
  end
end
 result = numerator.to_i / denominator.to_i
 puts "#{numerator} / #{denominator} is #{result}."

 puts
 #################### 9 ###########################
=begin
In an earlier exercise, you wrote a program that prints 'Launch School is the best!'
repeatedly until a certain number of lines have been printed.
Modify this program so it repeats itself after each input/print iteration, asking
for a new number each time through. The program should keep running until the user
enters q or Q.

=end
loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts "How many lines would you like? Enter a number >= 3. Enter Q to quit"

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3 # this break will only break the inner loop, not the outer.

    puts "That's not enough lines!"
  end

  break if input_string == 'q' # This is here so that the break will  break the outer loop.

    while number_of_lines > 0
      puts "Launch School is the best!!!"
      number_of_lines -= 1
    end
end

puts
###################### 10 ######################
=begin

Write a program that requests two integers from the user, adds them together, and
then displays the result. Furthermore, insist that one of the integers be positive,
and one negative; however, the order in which the two integers are entered does not matter.

Do not check for positive/negative requirement until after both integers are entered,
and start over if the requirement is not met.

You may use the following method to validate input integers:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

=end


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"

=begin

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "Enter a positive or negative integer."
  first_number = gets.chomp
  puts "Enter a positive or negative integer."
  second_number = gets.chomp

  if first_number || if second_number != 0
    puts "one number must be negative."
  end
end

  sum = first_number.to_i + second_number.to_i
  puts sum

  break if valid_number?(first_number) && valid_number?(second_number)



end
=end
