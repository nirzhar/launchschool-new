=begin

Write a method that takes a string as argument. The method should return a new,
all-caps version of the string, only if the string is longer than 10 characters.
Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a
few methods that would be helpful.
Check the Ruby Docs!)

=end

def capital(x)
  if x.length > 10
    return x.upcase
  else
    puts "not capital."
  end
end

puts  capital("is there anybody in there?")
puts capital("Not today!")

# IS THERE ANYBODY IN THERE?
# not capital.


#################################

=begin

Write a program that takes a number from the user between 0 and 100 and reports
back whether the number is between 0 and 50, 51 and 100, or above 100.

=end


puts "Enter a number between 0 and 100."

number = gets.chomp.to_i

if number < 0
  puts "Mmm...don't enter negative numbers."
elsif number <= 50
  puts "Number is between 0 and 50."
elsif number <= 100
  puts "Number is between 51 and 100."
else
  puts "Number is greater than 100."
end
#=end


#################




def something(number)
  case
  when number < 0
    puts "Negative number. Nope."
  when  number <= 50
    puts " Number is between 0 and 50."
  when  number <= 100
    puts "Number is between 51 and 100"
  else
    puts "Number is greater than 100."
  end
end

puts "Enter a number between 0 and 100."

number = gets.chomp.to_i
something(number)
