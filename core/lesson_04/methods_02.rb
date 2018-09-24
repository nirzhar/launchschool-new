# Methods: Practice Problems: Additional Practice
puts puts
# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.

#####
# iterate
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

puts puts
#########################

# 2: Add up all of the ages from the Munster family hash:
total = 0
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_, age| total_ages += age }
puts total_ages # => 6174

#### OR ####
puts ages.values.inject(:+)
# This uses ages.values to make an array, then uses the inject method which is
# part of the Enumerable module. The strange-looking parameter to inject is simply
# a variety of the inject method which says "apply the + operator to the
# accumulator and object parameters of inject".

puts puts
######################

# 3: In the age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).
ages.each {|key, value|
  if value < 100
    puts "#{key} is #{value}."
  end
}
puts
##### OR ####
ages.keep_if { |_, age| age < 100 }
##### OR #####
puts ages.select { |_, age| age < 100 }

puts puts
##########################

# 4: Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.min # OR ages.values.min

puts puts
############################

# 5: In the array:
# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |str, index|
  if str.start_with?("Be")
  puts "The index is #{index}"
  end
end

puts puts

######### OR ################
flintstones.index { |name| name[0, 2] == "Be" }
#############################

# 6: Amend this array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.each {|name|
  puts name[0, 3]
}
################ OR ##########
flintstones.map! { |name| name[0,3] }

puts puts
#############################

# 7: Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"
# Eg: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0 # > so that not the entire alphabet is counted.
end

puts result
# {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}
puts puts

#############################
words = "the flintstones rock"
puts words.split.map{ |word| word.capitalize }.join(' ')
# The Flintstones Rock

puts puts
############################

# 10:
# Given the munsters hash below
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the family
# member is in (kid, adult, or senior). Your solution should produce the hash below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

puts munsters
puts puts
############################

# QUIZ
def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do

    break if current_word == words.size

    words[current_word].upcase!
    current_word += 1
  end

  words.join('_')
end
sentence = 'The sky was blue'
p upper_snake(sentence) # => 'the_sky_was_blue'

puts puts
######################

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end
puts odd_numbers

puts puts
#################
numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size

loop do
  number = numbers[-counter]
  for num in 1..number
    puts num
  end

  break if counter == 1
  counter -=1
end

puts puts
####################


def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end


def upper_snake(str)
  words = str.split
  current_word = 0

  loop do

    break if current_word == words.size

    words[current_word].upcase!
      current_word += 1
  end

  words.join('_')
end
sentence = 'The sky was blue'
puts change_case(sentence, :upper_snake)

puts puts
###################

arr = [1, 2, 3, 4, 5]
counter = 0

new_arr = []

loop do
  num = arr[counter]
  if num >= 3
    new_arr << 0
  else
    new_arr << num * 2
  end

  counter += 1
  break if counter == arr.size
end
p new_arr

puts puts
##################

hsh = {a: 'apple', b: 'pear', c: 'orange', d: 'kiwi', e: 'banana'}
#counter = 0

new_hsh = {}

for letter, fruit in hsh
  new_hsh[letter] = fruit if fruit.size > 4
end
p new_hsh

puts puts

############

def some_method(words)
  arr = []
  counter = 0

  loop do
    word = words[counter]
    arr << word if word.size < 4

    counter += 1
    break if counter == words.size
  end

  arr
end

poem = %w(April is the cruelest month)
p some_method(poem)

puts puts
###################

def star_method(stars)
  arr = []
  stars.each do |star|
    arr.push(star.upcase)
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
p stars_2 = star_method(stars_1)

puts puts
####################

def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size do
    arr << stars[counter][0, 3]

    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
p stars_2 = star_method(stars_1)

puts puts
#######################

def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
puts stars_2 = star_method(stars_1)

puts puts
#########################

{a: 1, b: 2, c: 3, d: 4, e: 5}.each do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end

puts puts

##########################
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers = []
even_numbers = []

for number in numbers
  next if number.odd?
  even_numbers << number
end

for number in numbers
  next unless number.odd?
  odd_numbers << number
end
p odd_numbers
p even_numbers

puts puts

##################

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brasilia'
}

def begins_with_b(string)
  string[0] == 'B'
end

countries_and_capitals.find_all do |country, capital|
  begins_with_b(country)
end

p begins_with_b(countries_and_capitals)

puts puts
##########################

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end

usable_leads = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
p mailing_campaign_leads

puts puts
#######################

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end

puts odd_numbers

puts

numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end
puts odd_numbers

puts puts
##########################

numbers = [7, 3, 5, 2, 1, 8, 4]
counter = numbers.size

loop do
  number = numbers[-counter]
  for num in 1..number
    puts num
  end

  break if counter == 1
  counter -=1
end
puts numbers

puts puts

####################

[1, 2, 3].select do |num|
  num.odd?
  puts num
end

puts puts
#######################

def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
puts stars_2 = star_method(stars_1)

puts puts
###################

pets = ['cat', 'parrot', 'dog', 'fish']
pets.map do |pet|
  pet.size == 3
end

puts puts
#####################

numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
even_numbers, odd_numbers = numbers.partition do |number|
      number.even?
    end
p even_numbers
p even_numbers

puts puts

###########
