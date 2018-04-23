# loop_example.rb

=begin

loop do
  puts "Endless loop love."
  break #without the break it'll be an infinite loop.
end

##################

i = 0
loop do
  i += 2
  if i == 4
    next # next makes the program to skip the line and move to the next expression.
  end
  puts i
  if i == 10
    break
  end
end

=end

###############

x = gets.chomp.to_i

while x <= 11
  if x.odd?
    puts x
  end
  x += 1
end
