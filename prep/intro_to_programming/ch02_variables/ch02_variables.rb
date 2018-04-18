# Write a program called name.rb that asks the user to type in their name and then
# prints out a greeting message with their name included.

puts "What is your name?"

name = gets.chomp
10.times { puts name }

puts "How old are you?"
age = gets.chomp.to_i
age10 = age + 10
age20 = age + 20
age30 = age + 30
age40 = age + 40

puts "In 10 years, you will be #{age10}"
puts "In 20 years you will be #{age20}."
puts "In 30 years you will be #{age30}."
puts "In 40 years you will be #{age40}."


#########################################
