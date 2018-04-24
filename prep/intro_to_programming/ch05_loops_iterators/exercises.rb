# 1.

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# [1, 2, 3, 4, 5]

###########################

=begin

Write a while loop that takes input from the user, performs an action, and only
stops when the user types "STOP". Each loop can get info from the user.

=end

reply = ""

while reply != "STOP" do
  puts "Yeah?"
  reply = gets.chomp
end

####### LS SOLUTION ###############
# x = ""
# while x != "STOP" do
#   puts "Hi, How are you feeling?"
#   ans = gets.chomp
#   puts "Want me to ask you again?"
#   x = gets.chomp
# end

#########################

=begin

Write a method that counts down to zero using recursion.

=end

def zero(number)
  if number <= 0
    puts number
  else
    puts number
    zero(number - 1)
  end
end
puts zero(-5)
puts zero(10)
puts zero(35)

=begin

-5 is less than 0, so it'll execute the code, puts number and skips the rest of
the code to go to the end of the block.
10 is greater than 0, so it skips to, else puts number and prints 10.
Then, it executes the next line, (number-1), which will be 9 (but does not print
at this point because it is not asked to print/puts.). The program goes back to the top, if statement.
9 is not 0 or less than 0, so it skips, puts number and executes the else block; puts 9.
Then, it executes number - 1, which is 8. Program goes back up to if block, and so on.

=end
