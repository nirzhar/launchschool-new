################# 1 #############
# You come across the following code. What errors does it raise for the given examples
# and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

#find_first_nonzero_among(0, 0, 1, 0, 2, 0)
#find_first_nonzero_among(1)

# wrong number of arguments, given 6, expected 1: find_first_nonzero_among(numbers_is_one_argument)
# NoMethodError: cannot call each on integer. Integers do not have an each method.

puts
################ 2 ##################
# Our predict_weather method should output a message indicating whether a sunny or
# cloudy day lies ahead. However, the output is the same every time the method is invoked.
# Why? Fix the code so that it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# sunshine should be assigned Boolean values, not string values because
# all objects except nil and boolean will evaluate as true, so line 29 will always be truthy,
# so line 29 wil always be executed.

puts
#
######################## 3 ########################
# When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

# user input is a string, so 10  is printed 5 times as opposed to being multiplied by 5.
# so, do this instead: gets.chomp.to_i to convert ui to integer.

puts
################## 4 ##################

=begin
Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, to the pets hash.
After doing so, she realizes that her dogs Sparky and Fido have been mistakenly removed.
Help Magdalena fix her code so that all three of her dogs' names will be associated
with the key :dog in the pets hash.
=end

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser' # pets[:dog].push('bowser')

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}
# element assigment was used to try to insert a new value to the dog key, instead,
# Magdelena needs to access the list of dogs associated with the key :dog and add an element to it.
# Beacuse the returned value is an array, .push method can be used to push/add/append the element
# onto the end of the list.

puts
################# 5 ##################
# We want to iterate through the numbers array and return a new array containing only
# the even numbers. However, our code isn't producing the expected output.
# Why not? How can we change it to produce the expected result?

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]
=begin
We need to use .select insted of map because .select will return a new array containing
the elements of the original array for which the return value of the block is truthy.

map is used for transformation. It returns the value of the block for each iteration.
.even? expression returns the integer n and returns nil if it is odd.
=end

puts
################# 6 #################

# You want to have a small script delivering motivational quotes, but with the following
# code you run into a very common error message: no implicit conversion of nil into String (TypeError).
# What is the problem and how can you fix it?

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

#puts 'Confucius says:'
#puts '"' + get_quote('Confucius') + '"'

=begin
Since our original code did not have an explicit return statement, the return value
is the evaluated result of the last line executed. The last line is an if statement,
which returns the evaluated result of the branch whose condition evaluates to true,
or nil if there is no such branch. When we passed 'Confucius' or 'Yoda' in as the argument,
the condition person == 'Einstein' evaluated to false, so the last if statement evaluated to nil.
This caused our original method to return nil every time an argument other than 'Einstein' is passed in.

We can use explicit return statements, like: return 'Do. Or do not. There is no try.'
Or we can use elsif
=end

puts
#################### 7 ##############
# Time for a check of your financial situation.
# The output of the code below tells you that you have around $70. However, you expected your
# account to have about $238. What did we do wrong?

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance
# balance = calculate_balance doe snot increment each month, so we use balance += calculate_balance.
# This is because it is the same as balance = balance + calculate_balance.

puts

###################### 8 ###################
# The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1 # original: break if i > colors.length use things because it is fewer than colors.

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

puts
################# 9 ####################

# Given a String of digits, our digit_product method should return the product of all digits in the String argument.
# You've been asked to implement this method without using reduce or inject.

# When testing the method, you are surprised by a return value of 0. What's wrong with this code and how can you fix it?

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0 # change to product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

# product is initialized to 0 on line 3, each iteration will multiply the digit with 0,
# resulting in 0. In order to arrive at the product of all digits, we must initialize product
# to reference 1 on line 3.

puts
################### 10 ##################
# We started writing an RPG game, but we already run into an error message. Find the problem and fix it.

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player

=begin
When we get user input, it is always a String. Our character_classes hash, however,
uses symbols as keys (recall that { warrior: some_value } is syntactic sugar for { :warrior => some_value }).
So we first need to convert the input String into a symbol, by means of String#to_sym.

Next, Hash#merge returns a new hash, so when we the expression player.merge character_classes[input.to_sym] is evaluated,
this does not mutate player but instead creates a new hash, which we neither use nor assign to a variable.
So, in order to update the player hash, we have to either use its mutating sibling Hash#merge!
or re-assign player to the newly created hash as in the shown solution.
=end

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then she picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player

########################
