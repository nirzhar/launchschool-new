=begin

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
# I'm the method!
#I'm the lambda!

=end

###########
=begin

strings = ["Mayalu", "Dorje", "Nirvan"]

symbolize = lambda{ |x| x.to_sym }

symbols = strings.collect(&symbolize)

print symbols
# [:Mayalu, :Dorje, :Nirvan]

=end
###################

=begin

# Create a lambda, symbol_filter, that takes one parameter and checks to see if that parameter .is_a? Symbol.

# Create a new variable called symbols, and store the result of calling my_array.select and passing it your lambda.

# puts symbols at the end of the file in order to see the final contents of the array.

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| is_a? Symbol} #check t osee if it is a Symbol.

symbols = my_array.select(&symbols_filter) #select the items from smy_array, according to calculation of ymbols_filter

puts symbols

# [:kettles, :mittens, :packages]

=end

###################################

=begin

# The odds_n_ends array is full of all sorts of objects, but we only want the integers (numbers without decimal bits).

# Create a new variable, ints, and store the result of calling odds_n_ends.select method with a block that checks if the element .is_a? Integer.

# puts ints at the end of the file in order to see the final contents of the array.

odds_n_ends = [ :weezard, 42, "Mahamudra", true, 3, 5, 7, 20.5, :mayalu ]

int_check = lambda { |x| x.is_a? Integer }

sym_check = lambda { |x| x.is_a? Symbol }

ints  = odds_n_ends.select(&int_check)

sym = odds_n_ends.select(&sym_check)

puts ints
puts sym

=end

############################

# Create a lambda called first_half that checks if a hash value is less than
# (that is, earlier in the alphabet than) "M". (No need to do anything with the crew hash yet.)
# Make sure to use a capital "M," since we'll be checking capitalized names!
# Because it will be checking a hash, your lambda should include |key, value| instead of just |value|.


crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
 first_half = lambda { |key, value| value < "M" }

 a_to_m = crew.select(&first_half)

 puts a_to_m

 # {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}
