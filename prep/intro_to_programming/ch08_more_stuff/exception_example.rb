# exception_example.rb

begin
  #perform some dangerous operation.
rescue
  # do this if the operation fails.
  # for example, log the error.
end


################

=begin

We use a begin/rescue/end block to handle any exceptions that may happen within
our block. In this example, we have nil value in our array. Whenw e go to
call.length on nil, we get an error. When an exception or error is raised, the
rescue block will execute and then the program will continue to run as it normally would.
Without the rescue block there, out program would stop once it hit the
exception and we would lose the rest of our input.

=end

names = [ 'Mayalu', 'Dorjé', 'Chimé', nil, 'Rachel' ]

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in their name."
  rescue
    puts "Something went awry!"
  end
end


# Mayalu's name has 6 letters in their name.
# Dorjé's name has 5 letters in their name.
# Chimé's name has 5 letters in their name.
# Something went awry!
# Rachel's name has 6 letters in their name.

puts
puts " ######## "
puts
###### inline_exception ##########

zero = 0
puts "Before each call"
zero.each { |element | puts element } rescue puts "Nope. Can't do that!"
puts "After each call."

# Before each call
# Nope. Can't do that!
# After each call.

=begin

we cannot call.each method on an integer, so the second puts method will execute.
Without the rescue block, the program would exit without the second puts method being executed.
So, rescue is rescuing our program.

=end

puts

# division rescuing preexisting errors

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e #rescuing ZeroDivisionError and saving it into a variable, e.
    puts e.message # access to .message method that the ZDE object has available.
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(45, 4)
# 4
# divided by 0
# 11
