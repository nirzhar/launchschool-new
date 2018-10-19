
# require binding.pry# assessment 109

puts
puts
puts '-------------------------'
puts
puts


####### VARIABLE SHADOWING ##############
a = 4
b = 2

2.times do |a|

a = 5 # variable shadowing: name of the parameter is same as the variable
# initialized outside of the block.
puts a # 5, 5
end

puts a # 4
puts b # 2

puts puts

#########################

##################### ARRAY#EACH #####################
=begin
 # Array#each method iterates over the array, passes each element to the block,
  runs the block and after completing the iteration, it returns the original array.
  .each does NOT care about the return value of the block.
=end

numbers = [ 2, 4, 5, 20, 22]
  numbers.each { |num|
    p "#{num}" + ' ' + "is number #{num}"
  }

#p numbers

puts puts
####################

######################### ARRAY#MAP ########################

=begin
Array#map method iterates over the given array, runs the block, and returns a new array
that consists of the return values of each iteration.

=end

numbers = [ 4, 5, 20, 22]
  numbers.map { |num|
    new = num * 2
    puts new # outputs [8, 20, 40, 44], and returns [nil, nil, nil, nil] because puts returns nil.
  }

puts puts
######################################

################ ARRAY#SELECT ########################

=begin
1) select method also iterates over the array and passes each element to the block
and runds the block. It returns the value of the block if it evaluates to true.

2) select method ierates through the array object, passing each element o the array to the block and
runbs the block. It then considers the return value of the block.
If it evaluates (always true, except false and nil) to true, it takes that element and puts it in a new array.

3) select method evaluates return value of the block during each iteration and
if it evaluates to true moves that element into new array, and if it doesn’t
evaluate to true, it doesn’t do anything.

=end

numbers = [4, 5, 20, 22]
  numbers.select { |num|
    new_select = num.odd?
    p new_select # outputs false, true, false, false. returns [5]
  }
  p numbers # [4, 5, 20, 22]

puts puts
###########################

def amethod(param)      # param = str
   param += " universe" # hello universe. This is reassignment.  += returns a new string object.
   # param + " earth"   # hello earth
   param << " world"   # hello world
end

str = "hello"
amethod(str)

p str
puts puts

#############
a = "howlin'"
b = a

b << " wolf" # << is a destructive call. Perfomring destructive
#call on a means, going into the object (a) and modifying
# the value of the object.
# It's not returning a brand new object.

# ------- 2 variables; 1 object

# no matter what destructive call is made on either a or b, it's as if it's
# being made on the same object, so wen printing a or be, it's going to be identical.
# See below:

puts a # howlin' wolf
puts b # howlin' wolf
p a # "howlin' wolf"
p b # "howlin' wolf"

a = "hey" # reassignment.It's reassigning a from object where it was pointed.
# after a is reassigned, we have 2 variables and 2 objects. a points to, "hey"
# and b still points to "howlin' wolf".

b << " universe"

p a # hey
p b # howlin wolf universe


#########################

def prefix(str)
  "Mrs. " + str
end

name = 'Dinah'
name = prefix(name)

puts name # Mrs. Dinah

###### OR ##########

def prefix!(str)
  "Mrs. " << str
end

name = 'Dinah'
p prefix!(name) # Mrs. DInah

puts name # Dinah

##################

##############################

# COLLECTIONS: HASH, ARRAYS, and STRINGS

###############

a = 'hi' # a is initialized; a is pointing to a new object
b = a # b is pointing to a; it's pointing to an existing object

a += b # a is reassigned; a is a now reassigned to a new object.
#  + operator/method returns anew object

#################

# symbols are immutable strings.
hsh = {:a => 1, b: 5}
p hsh.fetch(:b)
# 5
puts puts

hsh[:c] = 5
p hsh

puts puts

hsh = {:a => 1, b: 5}
p hsh.fetch(:b)
# 5
puts puts

hsh[:c] = 7
p hsh

################

# each requires a block do end
# blocks are chunks of code we can pass into methods and the method will do something.
# here, .each is a method that will take the block (chunk of code)and iterate
# over each/every element, whcih is represented by |n|

# difference between each and loop is the return value. loop returns nil and each
# returns the original array.

arr = [7, 5, 22, 20,]

counter = 0

arr.each do |n|
puts n # this variable is same as variable here: |n|
end

puts puts

loop do
  puts arr[counter]
  counter += 1
  break if counter == arr.size
end

puts puts

arr.each do |n|
puts n if n > 7 # this variable is same as variable here: |n|
end

puts puts

p arr << 12 # [7, 5, 22, 20, 12]

puts puts

p arr.unshift[2] # 0

puts puts

p arr.unshift(2) # [2, 7, 5, 22, 20, 12] adds 2 to the beginning of arr

puts puts

p arr.pop # 12 removes last element
p arr << 10 # [7, 5, 22, 20, 10] add to the end of array

p arr << 5 # [7, 5, 22, 20, 12, 5]

puts puts

p arr.uniq # [7, 5, 22, 20, 12] removes duplicate value.

puts puts

# select returns a new array based on the block's return value. If the
# return value of the block evaluates to true, then the element is selected.
# If return value evaluates to false, then the element is not selected.
# select careas bout the retrun values's "truthiness," not whether it is true or false.

num = arr.select do |n|
  n + 1
  puts n # returns nil  because puts always returns nil
end

p num

puts puts

################

# MAP || Transformation
# map returns a new array based on the block's return value.
# Each element is transformed based on the return value.

# incremetn by 1

incremented = arr.map {|n| n + 1}
p incremented # [3, 8, 6, 23, 21, 11, 6]

puts puts

incremented = arr.map {|n| n > 2}

p incremented # [false, true, true, true, true, true, true] returns boolean
# because .map is not select, so it can't select odd elements. Map transforms,
# select looks at the truthiness of the return value.

hsh_new = {a: 5, b: 7, c: 9}
hsh_new.each { |k, v|
puts "Key is #{k}, and value is #{v}" }

puts puts
##################

# Write a method that takes an array of strings, and returns an array of the
# same string values,except with the vowels removed.

# ----------------------
# **input**
# Write a list of words: green, yellow, black, white

# ** output *
# List of modified words are: grn, yllw, bck, wht

VOWELS = ['a', 'e', 'i', 'o', 'u']

def delete_vowels(strings)
    strings.map do |string|
      chars = string.split("")
      VOWELS.each{ |vowel| chars.delete(vowel) }
      chars.join("")
    end
end

p delete_vowels(["green", 'yellow', 'blue'])

puts puts
################
# Write a method that takes a string, and returns a boolean indicating whether
# the string has a balanced set of parantheses.

#
# balancer("hi") # => true
# balancer("(hi") # => false
# balancer("(hi)") # => true

# Bonus:

#
# # balancer(")hi(") # => false
#

def balancer(string)
  string.count("(") == string.count(")")
end

p balancer("hi") # => true
p balancer("(hi") # => false
p balancer("(hi)") # => true

puts puts

#################

# Write a method that takes two numbers. It should print out all primes
# between the two numbers. Don't use Ruby's 'prime' class.


#
# find_primes(3, 10)

# => 3, 5, 7
#
def is_prime?(num)
  (2..(num - 1)).each do |divisor|
    return false if num % divisor == 0
  end

  true
end


def find_primes(num1, num2)
  (num1..num2).select do |num|
    # check if num is prime
  is_prime?(num)
  end
end
# def find_primes(num1, num2)
#   (num1..num2).select do |num|
#     # check if num is prime
#     if num % 1 == 0 && num % num == 0
#       p num
#     else
#     end
#   end
# end

p find_primes(3, 10)
p find_primes(5, 20)
p find_primes(1, 2)

puts puts
#######################

################ MUTATING METHODS ######################

=begin
Mutating methods are those that change the value of the calling object.

=end
a = 'hello'

puts a # -> hello
puts a.object_id # -> 70368527757720 (this number will be different for you)

a.upcase! # caller of the method is mutated.object_id is not chagned. so it is a mutating method.

puts a # -> HELLO
puts a.object_id  # -> 70368527757720 (this number will be the same as the one above)

puts puts

#################### NON-MUTATING METHODS ##############
=begin


=end
a = 'hello'

puts a # -> hello
puts a.object_id # -> 70368468160540 (this number will be different for you)

a.upcase # returns new string object and doesn’t change the value of our calling object.

puts a # -> hello
puts a.object_id  # -> 70368468160540 (this number will be the same as the one above)

puts puts
##################

a = 'name' # pointing to one string object with the value, 'name'
b = 'name' # pointing to different string object with same value, 'name'
c = 'name' # pointing to different string object with same value, 'name'

# Are these three local variables pointing to the same object?

puts a.object_id # 70266378652920
puts b.object_id # 70266378652900
puts c.object_id # 70266378652880

puts
puts
# And when we add these two lines of code... ?

a = c
b = a

puts a.object_id # 70266378652880
puts b.object_id # 70266378652880
puts c.object_id # 70266378652880

puts
puts

# What about now?
a = 5 # integers and symbols in Ruby with same values occupy the same physical space in memory.
b = 5
c = 5

puts a.object_id # 11 # Integers and symbols with same value occupy the same pysical space in memory.
puts b.object_id # 11
puts c.object_id # 11

puts
puts

a = :cat
b = :cat
c = :cat

puts a.object_id # 993628 integers and symbols with same value in Ruby occupy the same physical space in memory.
puts b.object_id # 993628
puts c.object_id # 993628

puts
puts

a = 'hello '
puts a
puts a.object_id # 70327234380680

a += 'world' # a is reassigned to a new string object by concatenation. a = a + 'world'.
puts a
puts a.object_id # 70327234380500

puts
puts

#########################
