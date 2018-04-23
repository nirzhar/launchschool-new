# conditional.rb

=begin

puts "Put in a number."

a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, not 4."
end

#############################
# if else in one line:

if x == 3 then puts "x is 3."

#########################

puts "x == 3" if x ==3

#########################

puts "x is not 3." unless x == 3

##############################

=end

#Case statement

a  = 5
if a
  puts "how can this be true?"
else
  puts "it is not true."
end

a = 0
if a
  puts "how can this be true?"
else
  puts "this is not true."
end

a = "false"
if a
  puts "How can this be true?"
else
  puts "this is not true."
end
