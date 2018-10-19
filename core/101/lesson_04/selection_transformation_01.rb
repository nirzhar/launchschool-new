# Selection and Transformation
# Write a method that takes a string and returns an array with vowels from
# the original string.

# method name
# initialize counter
# initialize variable that stores vowels extracted
# loop
# iterate over the string with the counter, which represents the
# current character in the string, and store that in a new variable.
# if aeiouAEIOU is included in the current character
# append the character to the variable that was initialized
# increment the counter to go to the next character inthe string
# break if the counter is == size of string
# end if statement
# return the new string
# end loop
puts puts
def find_vowels(str)
selected_vowels = ''
counter = 0

loop do
  current_character = str[counter]

  if 'aeiouAEIOU'.include?(current_character)
     selected_vowels << current_character
  end

   counter += 1
   break if counter == str.size
 end

 selected_vowels
end

puts find_vowels('Is this is the real life. Is it just fantasy?')
puts puts

####################

def bowels_be_here(str)
  extracted_bowels = ''
  counter = 0

 loop do
   current_bowel = str[counter]

   if 'aeiouAEIOU'.include?(current_bowel)
     extracted_bowels << current_bowel
   end

   counter += 1
   break if counter == str.size
 end

 extracted_bowels
end

puts bowels_be_here('Ladi lada lulo lido')
puts puts

################

def get_consonants(str)
  consonants_be_here = ''
  counter = 0

  loop do
    current_consonants = str[counter]

    if 'bcdfghjklmnpqrstvwxyz'.include?(current_consonants)
      consonants_be_here << current_consonants
    end

    counter += 1
    break if counter == str.size
  end

consonants_be_here
end

puts get_consonants('apples and bananas!')
puts
sentence = 'Everybody loves kung-fu fighting!'
puts get_consonants(sentence)
puts
puts number_of_consonants = get_consonants('oi. kahan jaa rahe ho, bhai!?').size


###################
# Let's now take a look at an example with hashes. In this example we want to
# select the key-value pairs where the value is 'Fruit'.

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key] #iterating through the keys to get value

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)
puts puts

#####################
# find key value pairs where value is Dzogchen
def select_books(books_hash)
  books_keys = books_hash.keys
  counter = 0
  dzogchen_books = {}

  loop do
    break if counter == books_hash.size

    current_key = books_keys[counter]
    current_value = books_hash[current_key]

    if current_value == 'Dzogchen'
      dzogchen_books[current_key] = current_value
    end

    counter += 1
  end

  dzogchen_books
end

books_list = {
  "Essentials Of Mahamudra" => "Mahamudra",
  "Clarifying the Natural State" => "Dzogchen",
  "Ocean Of Definitive Meaning" => "Mahamudra",
  "Great Perfetion" => "Dzogchen",
  "Mind Beyond Death" => "Dzogchen",
  "Wild Awakeing" => "Mahumdra dnd Dzogchen"
}

puts select_books(books_list)
puts puts
#######################

def movies_1973(movies_hash)
  counter = 0
  movies_keys = movies_hash.keys
  selected_movies = {}

  loop do
    break if counter == movies_hash.size

    current_key = movies_keys[counter]
    current_value = movies_hash[current_key]

    if current_value == '1973'
      selected_movies[current_key] = current_value
    end

    counter += 1
  end

  selected_movies
end

movies = {
  'The Conformist' => '1970',
  'The Graduate' => '1970',
  'The Godfather' => '1972',
  'The Exorcist' => '1973',
  'Jaws' => '1973',
  'Star Wars' => '1977'
}

puts movies_1973(movies)
puts puts

#######################

def dpr_books(books_hash)
  counter = 0
  books_keys = books_hash.keys
  selected_dpr_books = {}

  loop do
    break if counter == books_hash.size

    current_key = books_keys[counter]
    current_value = books_hash[current_key]

    if current_value == 'DPR'
      selected_dpr_books[current_key] = current_value
    end

    counter += 1
  end

  selected_dpr_books
end

tibetan_books = {
  'Mind Beyond Death' => 'DPR',
  'Rebel Buddha' => 'DPR',
  'Great Perfcetion' => 'DPR',
  'The World Of Tibetan Buddhism' => 'Dalai Lama'
}
puts dpr_books(tibetan_books)
puts puts

#######################

############# Tansformation Example #####################

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_numbers(my_numbers)
puts
puts my_numbers
puts puts
###########################

# Implement a double_numbers! method that mutates its argument.

# def double_numbers!(numbers)
#   #doubled_numbers = []
#   counter = 0
#   loop do
#     break if counter = numbers.size
#
#     current_number = numbers[counter]
#     #numbers[counter] *= 2 # OR numbers[counter] = current_number * 2
# numbers[counter] = current_number * 2
#     counter += 1
#
#   end
#   numbers
# end

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

the_numbers = [ 2, 4, 6, 8, 15 ]
puts double_numbers!(the_numbers)
puts
puts the_numbers
puts puts

###################

def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_items = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
      selected_items[current_key] = current_value
    end

    counter += 1
  end
  selected_items
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
puts
puts general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
puts
puts general_select(produce, 'Meat')      # => {}
puts puts
#################################

# Write a method to select books according to MMM, DZ, or Tantra

# => def name
# => specify what the keys are: item_keys = keys of the list / items_list.keys
# => initilaize counter to 0
# => initialize a hash where the selected items will go
# => loop
# => break if the counter == same size as the keys of the items list
# => find current key: current key is the key/item iterated over the keys of the items list (by the counter)
# => find current value: current value is the current key iterated over the itmes list.
# => Now, if current value == selection_criteria  current key of the selected items
# =>      belongs to the current_value selected_items[current_key] = current_value
# => increment counter by 1
# => return selected_items


def criteria_selection(books_list, selection_criteria)
  books_keys = books_list.keys
  counter = 0
  selected_items = {}

  loop do
    break if counter == books_keys.size

    current_key = books_keys[counter]
    current_value = books_list[current_key]

    if current_value == selection_criteria
      selected_items[current_key] = current_value # the current key of the
      # selected items is assigned to the current value
    end
    counter += 1
  end

  selected_items
end

books_list = {
  "Essentials Of Mahamudra" => "Mahamudra",
  "Clarifying the Natural State" => "Dzogchen",
  "Ocean Of Definitive Meaning" => "Mahamudra",
  "Great Perfetion" => "Dzogchen",
  "Mind Beyond Death" => "Dzogchen",
  "Wild Awakeing" => "Mahumdra dnd Dzogchen"
}

puts criteria_selection(books_list, 'Mahamudra')
puts
puts criteria_selection(books_list, 'Dzogchen')
puts
puts criteria_selection(books_list, 'Tantra')
puts puts

##################

def teacher_schools(teachers_list, schools)
  teachers_keys = teachers_list.keys
  counter = 0
  selected_teachers = {}

  loop do
    break if counter == teachers_keys.size

    current_key = teachers_keys[counter]
    current_value = teachers_list[current_key]

    if current_value == schools
      selected_teachers[current_key] = current_value
    end

    counter += 1

  end
  selected_teachers
end

teachers_list = {
  'Dzogchen Ponlop Rinpoche' => 'Kagyu',
  'Khenpo Tsultrim Gyamtso Rinpoche' => 'Kagyu',
  'HH Karmapa XVII' => 'Kagyu',
  'HH Dalai Lama' => 'Gelugpa',
  'HH Dilgo Khentse Rinpoche' => 'Nyingma',
  'HH Skya Trezin Rinpoche' => 'Sakya',
  'Nyoshul Khen Rinpoche' => 'Nyingma',
}
puts teacher_schools(teachers_list, 'Kagyu')
puts teacher_schools(teachers_list, 'Nyingma')
puts teacher_schools(teachers_list, 'Gelugpa')
puts teacher_schools(teachers_list, 'Sakya')
puts puts

#########################

# Try coding a method that allows you to multiply every array item by a specified value:
# => def name arguments(nukbers, and mulitiplier)
# => item_number is list.numbers
# =>  initialize counter
# => initilaize array
# => loop do
# =>  break if counter == list of items.keys
# => current_key is counter on list of items.keys
# => multiplied number << current_key * multiplier
# => increment counter by 1
# =>  return multiplied numbers

def multiply_by_any_number(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * multiplier
    counter += 1
  end

  multiplied_numbers
end

my_numbers[3]
puts multiply_by_any_number(my_numbers, 12)
puts puts
#############################

################
def select_letter(sentence, letter)
  selected_characters = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_character = sentence[counter]

    if current_character == letter
      selected_characters << current_character
    end

    counter += 1
  end
  selected_characters
end

question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a') # => "aaaaaaaa"
puts
puts select_letter(question, 't') # => "ttttt"
puts
puts select_letter(question, 'z') # => "
puts
puts question
puts

# And because select_letter returns a string, if we wanted to, we can continue
# to chain string methods on the return value. Suppose we wanted to find out
# how many times a letter occurs in a sentence, we could use our method above
# chained with String#size, like so:
puts select_letter(question, 'a').size # => 8
puts
puts select_letter(question, 't').size # => 5
puts
puts select_letter(question, 'z').size # => 0
puts
puts question
puts puts
###################
